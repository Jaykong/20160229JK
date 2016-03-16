//
//  Complex.h
//  JKKPolymosm
//
//  Created by trainer on 3/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property int real, imaginary;
-(void)print;
-(void)setReal:(int)real imaginary:(int)imag;
-(Complex *)add:(Complex *)c;
-(void)println;
@end
