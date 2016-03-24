//
//  Person.m
//  Runtime4_dic_to_model
//
//  Created by kongyunpeng on 3/25/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
@implementation Person
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        unsigned int count;
     objc_property_t *properties =   class_copyPropertyList([Person class], &count);
        
        for (int i = 0; i < count; ++i) {
            objc_property_t property = properties[i];
            
          const char *name = property_getName(property);
            
            NSString *key = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
            
            [self setValue:dict[key] forKey:key];
        }
        return  self;
        
    }
    return self;
}
@end
