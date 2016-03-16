//
//  Complex.m
//  JKKPolymosm
//
//  Created by trainer on 3/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Complex.h"

@implementation Complex
-(void)print {
    NSLog(@"the complext is %i + %ii",_real,_imaginary);
}
-(void)setReal:(int)real imaginary:(int)imag {
    _real = real;
    _imaginary = imag;
}

-(Complex *)add:(Complex *)c {
    Complex *result = [[Complex alloc] init];
    result.real = _real + c.real;
    result.imaginary = _imaginary + c.imaginary;
    return result;
}
@end
