//
//  Child.m
//  JKKFactoryMethod
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Child.h"

@implementation Child
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"child";
        self.age = 3;
        self.sex = 1;
        self.height = 100;
    }
    return self;
}
@end
