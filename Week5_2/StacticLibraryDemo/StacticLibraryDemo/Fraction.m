//
//  Fraction.m
//  StacticLibraryDemo
//
//  Created by trainer on 3/30/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
-(Fraction *)subtract:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = _numerator * f.denominator - f.numerator * _denominator;
    result.denominator = _denominator * f.denominator;
    return  result;
}
@end
