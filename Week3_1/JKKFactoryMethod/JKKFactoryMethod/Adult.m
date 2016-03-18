//
//  Adult.m
//  JKKFactoryMethod
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Adult.h"
#import "Elder.h"
@implementation Adult
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"adult";
        self.age = 20;
        self.height = 170;
        self.sex = 0;
    }
    return self;
}
+(Person *)selectPerson:(int)age {
    if (age > 60) {
        return [[Elder alloc] init];
    } else {
        return  [[Adult alloc] init];
    }
    
}

@end
