//
//  Fraction.m
//  JKKPolymosm
//
//  Created by trainer on 3/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void)print {
    NSLog(@"fraction is %i/%d",_numerator,_denominator);
}
-(void)setTo:(int)n over:(int)d {
    _numerator = n;
    _denominator = d;
    
}
-(Fraction *)add: (Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = _numerator * f.denominator + f.numerator * _denominator;
    result.denominator = _denominator * f.denominator;
    return result;
}
@end
