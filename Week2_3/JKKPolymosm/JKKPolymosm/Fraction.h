//
//  Fraction.h
//  JKKPolymosm
//
//  Created by trainer on 3/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void)print;
-(void)setTo:(int)n over:(int)d;
-(Fraction *)add: (Fraction *)f;
@end
