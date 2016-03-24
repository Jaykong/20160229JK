
#import <Foundation/Foundation.h>
#include <objc/runtime.h>
#import "Fraction.h"
/*
 动态添加方法
 1.无参
 2.1参
 3.2参
 
 */
void printme() {
    NSLog(@"more fun");
}

int twoPara(id anyid, SEL any, int a, int b) {
    return  a + b;
}

void onePara(id me,SEL _cmd2, NSString *str1) {
    
}


int twoPara2(id self ,SEL _cmd,NSString *str1, NSString *str2) {
    printf("%s %s",[str1 UTF8String],[str2 UTF8String]);
    return 20;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f = [[Fraction alloc]init];
        class_addMethod([f class], @selector(printme), (IMP)printme, "");
        if ([f respondsToSelector:@selector(printme)]) {
            printf("response to @selector(printme)");
            [f printme];
        } else {
            printf("sorry not ");
        }
        
        
        class_addMethod([f class], @selector(oneParaMethod), (IMP)onePara, "");
        
        
        class_addMethod([f class], @selector(twoPara::), (IMP)twoPara, "i@:ii");
       int result = [f twoPara:1 :2];
        printf("the result is %i\n",result);
        
        
        class_addMethod([f class], @selector(twoPara2::), (IMP)twoPara2, "i@:@@\n");
        
        [f twoPara2:@"this is" :@"tons of fun\n"];
       
        
        NSString *str = [NSString stringWithContentsOfFile:@"String" encoding:NSUTF8StringEncoding error:NULL];
        NSString *newStr2 = [str stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
       
        printf("str is %s\n",[newStr2 UTF8String]);
        
        Class StringClass = NSClassFromString(newStr2);
        NSString *newStr = [[StringClass alloc] initWithString:@"this is a string from outside"];
        
        printf("new str is :%s\n",[newStr UTF8String]);
        
    }
    return 0;
}
