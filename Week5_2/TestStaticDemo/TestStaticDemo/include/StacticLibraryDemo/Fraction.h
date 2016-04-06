//
//  Fraction.h
//  StacticLibraryDemo
//
//  Created by trainer on 3/30/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property (nonatomic,assign) int numerator,denominator;
-(Fraction *)subtract:(Fraction *)f;
@end
