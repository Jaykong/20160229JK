//
//  main.m
//  RunTime1
//
//  Created by kongyunpeng on 3/24/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <objc/runtime.h>
#import "CustomClass.h"

void copyObject() {
    CustomClass *cust = [CustomClass new];
    NSLog(@"the cust is %p,%p",cust,&cust);
    id copyCust = object_copy(cust,sizeof(cust));
    NSLog(@"%p %p",copyCust,&copyCust);
    [copyCust fun];
    CustomClass *cust2 = cust;
    NSLog(@"cust1 cust2 %p %p",&cust,&cust2);
    //&cust是指针的地址 0x7fff5fbff7d8 0x7fff5fbff7d0
    //cust是指向的对象的地址 0x100200280 0x100200280
}

void disposeObject() {
    CustomClass *obj = [CustomClass new];
    object_dispose(obj);
    [obj release];
}

void changeObjectClass() {
    CustomClass *obj = [CustomClass new];
  Class class = object_setClass(obj, [NSString class]);
    NSLog(@"the class of the obj is now:%@", class);
    NSLog(@"the string is%@",NSStringFromClass([obj class]));
    
   
    NSString *str1 = NSStringFromClass([obj class]);
   NSString *str2 = [[[obj class] alloc] initWithString:@"this is a class"];
    
    NSLog(@"%@,%@",str1,str2);
    
}

void getClass() {
  CustomClass *obj = [CustomClass new];
    Class class =  object_getClass(obj);
    NSLog(@"the class is %@",class);
}

void getClassName() {
    CustomClass *obj = [CustomClass new];
    object_setClass(obj, [NSString class]);
  NSString *str1 =  [NSString stringWithCString:object_getClassName(obj) encoding:NSUTF8StringEncoding];
    
       NSLog(@"the str1 is %@",str1);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
     //   disposeObject();
       // changeObjectClass();
     //   getClass();
        getClassName();
        
    }
    return 0;
}
