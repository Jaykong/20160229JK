//
//  Fraction.h
//  JKFraction
//
//  Created by trainer on 3/7/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
//{
//    int numerator;
//    int denominator;
//}
@property int numerator,denominator;
//@property int xyz;

// -(void) setXyz:(int)x;
// -(int) xyz;


//1.自动生成
//-(int)numerator;
//-(int)denominator;
//-(void)setNumerator:(int)n;
//-(void)setDenominator:(int)d;
//2.自动生成
// _numerator
// _denomnator

-(void)print;
////-(int)numerator;
//-(int)denominator;
//-(void)setNumerator:(int)n;
//-(void)setDenominator:(int)d;

-(void)setTo:(int)n over:(int)d;

-(Fraction *)addFraction:(Fraction *)f;
+(void)showFraction;

@end
