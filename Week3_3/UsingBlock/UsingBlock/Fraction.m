//
//  Fraction.m
//  UsingBlock
//
//  Created by trainer on 3/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction
//define where to use block
-(void)usingBlock:(void (^)())blockName {
    printf("message from fraction\n");
    blockName();
}
@end
