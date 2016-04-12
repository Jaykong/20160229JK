


//
//  NumericAbstractStragy.m
//  StrategyPatternReview
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "NumericAbstractStragy.h"

@implementation NumericAbstractStragy
-(BOOL)validate:(UITextField *)textField error:(NSError **)error {
    
    NSRegularExpression *expression = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    NSInteger numberOfMatches = [expression numberOfMatchesInString:textField.text options:0 range:NSMakeRange(0, textField.text.length)];
    if (numberOfMatches == 0) {
        NSLog(@"fail to validate");
    }
    return  NO;
}
@end
