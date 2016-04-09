//
//  CustomTextField.m
//  StrategyImpementation
//
//  Created by trainer on 4/8/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "CustomTextField.h"
#import "AlgorithmStrategy.h"
@interface CustomTextField()
@property (nonatomic,strong) IBOutlet AlgorithmStrategy *strategy;
@end

@implementation CustomTextField
-(BOOL)validate {
return [ _strategy validate:self error:nil];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
