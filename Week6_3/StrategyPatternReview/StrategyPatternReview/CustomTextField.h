//
//  CustomTextField.h
//  StrategyPatternReview
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AbstractStragy.h"
@interface CustomTextField : UITextField
 @property(nonatomic,strong) IBOutlet AbstractStragy *strategy;
-(BOOL)valide;
@end
