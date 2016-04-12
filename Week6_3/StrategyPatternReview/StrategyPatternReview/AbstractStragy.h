//
//  AbstractStragy.h
//  StrategyPatternReview
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface AbstractStragy : NSObject

-(BOOL)validate:(UITextField *)textField error:(NSError **)error;
@end
