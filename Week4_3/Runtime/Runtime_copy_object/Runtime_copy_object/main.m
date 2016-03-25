//
//  main.m
//  Runtime_copy_object
//
//  Created by trainer on 3/25/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <objc/runtime.h>
#import "Fraction.h"
void copyObjc() {
    Fraction *f = [Fraction new];
    NSLog(@"the origin f is %p",f);
 id copyF =object_copy(f,sizeof(f));
    NSLog(@"the copy f is %p",copyF);
    [copyF fun];
    
}
void changeObjectClass() {
  Fraction *obj = [Fraction new];
  Class originobj = object_setClass(obj, [NSString class]);
    //Class
    
    NSLog(@"the origin class is %@",originobj);
    NSLog(@"the new class is %@",NSStringFromClass([obj class]));
    
}


void getClass() {
    Fraction *obj = [Fraction new];
   Class class = object_getClass(obj);
    NSLog(@"the class is %@",class);
}
void getClassName() {
    Fraction *obj = [Fraction new];
   const char *name = object_getClassName(obj);
    NSString *str1 = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
    NSLog(@"the name of the class:%@",str1);
}

void print(id self,SEL _cmd,NSString *str) {
    NSLog(@"this is gonaa be  %@",str);
}

void printTwoParas(id self,SEL _cmd,NSString *name,NSString *fun) {
    NSLog(@"%@:this is gonaa be  %@",name,fun);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        copyObjc();
        changeObjectClass();
        getClass();
        getClassName();
        
        class_addMethod([Fraction class], @selector(print:), (IMP)print, "v:@");
         Fraction *obj = [Fraction new];
        [obj print:@"even more fun"];
        
        class_addMethod([Fraction class], @selector(printTwoParas::), (IMP)printTwoParas, "");
        [obj printTwoParas:@"Hello,Runtime" :@"tons of fun!"];
        
        
        
        NSString *str = [NSString stringWithContentsOfFile:@"String" encoding:NSUTF8StringEncoding error:nil];
        NSString *str2 = [str stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
        
        Class StringClass = NSClassFromString(str2);
     NSString *readSt =  [[StringClass alloc] initWithString:@"you can read from outside"];
        NSLog(@"the read str:%@",readSt);
        
       
        NSDictionary *dic = @{@"numerator1":@10,@"denominator":@12};
        
       // [obj setValuesForKeysWithDictionary:dic];
       
        
        //get propeties list
        unsigned int count ;
      objc_property_t *properties =  class_copyPropertyList([Fraction class], &count);
        
        for (int i = 0; i < count; ++i) {
            const char *name = property_getName(properties[i]);
            printf("%s\n",name);
            NSString *key = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
            
            [obj setValue:dic[key] forKey:key];
        }
        
         NSLog(@"fraction value:%i",obj.numerator);
        
    }
    return 0;
}
