//
//  AlgorithmStrategy.h
//  StrategyImpementation
//
//  Created by trainer on 4/8/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface AlgorithmStrategy : NSObject

-(BOOL)validate:(UITextField *)input error:(NSError **)error;
@end
