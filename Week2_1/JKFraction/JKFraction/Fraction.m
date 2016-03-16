//
//  Fraction.m
//  JKFraction
//
//  Created by trainer on 3/7/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction
//@synthesize numerator,denominator ;

//-(int)numerator {
//    return numerator;
//}
//-(int)denominator {
//    return denominator;
//}
//
//-(void)setNumerator:(int)n {
//    numerator = n;
//}
//-(void)setDenominator:(int)d {
//    denominator = d;
//}
-(void)setTo:(int)n over:(int)d {
    _numerator = n;
    _denominator = d;
}
-(void)print {
    NSLog(@"the fraction is %i/%i",_numerator,_denominator);
}
-(Fraction *)addFraction:(Fraction *)f {
  Fraction *result = [[Fraction alloc] init];
  result.numerator = _numerator * f.denominator + _denominator * f.numerator ;
  result.denominator = _denominator * f.denominator;
  return result;
}

+(void)showFraction {
    //local varible
    int count ;
    ++count;
    NSLog(@"the static count is %i",count);
}

@end
