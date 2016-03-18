//
//  Elder.m
//  JKKFactoryMethod
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Elder.h"

@implementation Elder
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"eld";
        self.age = 61;
        self.height = 165;
        self.sex = 3;
    }
    return self;
}
@end
