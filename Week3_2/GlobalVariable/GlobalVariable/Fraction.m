//
//  Fraction.m
//  GlobalVariable
//
//  Created by trainer on 3/16/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Fraction.h"
int gInt = 55;
@implementation Fraction
-(void)print {
    extern int gVariable ;
    NSLog(@"the gVarible is %i",gVariable);
    
}
@end
