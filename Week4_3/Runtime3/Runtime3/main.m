/*
 获取类的所有属性
 
 */
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int count = 0;
     objc_property_t *properties =  class_copyPropertyList([Person class], &count);
        for (int i = 0; i < count; ++i) {
            objc_property_t property = properties[i];
          const char *name = property_getName(property);
            NSString *key = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
            printf("%s/n",[key UTF8String]);
            
            
        }
        
    }
    return 0;
}
