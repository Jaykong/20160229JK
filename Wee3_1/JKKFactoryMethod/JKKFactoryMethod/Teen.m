//
//  Teen.m
//  JKKFactoryMethod
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Teen.h"

@implementation Teen
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"teen";
        self.age = 13;
        self.height = 150;
        self.sex = 2;
    }
    return self;
}
@end
