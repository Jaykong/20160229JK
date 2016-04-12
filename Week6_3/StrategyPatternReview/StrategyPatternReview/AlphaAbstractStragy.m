
//
//  AlphaAbstractStragy.m
//  StrategyPatternReview
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "AlphaAbstractStragy.h"

@implementation AlphaAbstractStragy
-(BOOL)validate:(UITextField *)textField error:(NSError **)error {
    
    NSRegularExpression *expression = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
   NSInteger numberOfMatches = [expression numberOfMatchesInString:textField.text options:0 range:NSMakeRange(0, textField.text.length)];
    if (numberOfMatches == 0) {
        NSLog(@"alpha test failed");
    }
    
    return  NO;
}
@end
