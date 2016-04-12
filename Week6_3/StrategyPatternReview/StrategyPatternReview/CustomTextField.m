//
//  CustomTextField.m
//  StrategyPatternReview
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(BOOL)valide {
    [ _strategy validate:self error:nil];
    
    return NO;
}
@end
