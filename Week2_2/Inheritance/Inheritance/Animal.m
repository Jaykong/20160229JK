//
//  Animal.m
//  Inheritance
//
//  Created by trainer on 3/9/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(instancetype)init {
    if (self = [super init]) {
        numberOfleg = 4;
        hasTail = YES;
    }
    return self;
}
-(void)print {
    NSLog(@"%@ /'s legs are %i",[self class],numberOfleg);
}
@end
