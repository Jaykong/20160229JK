//
//  BenzFactory.m
//  AbstractFactory
//
//  Created by trainer on 4/20/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "BenzFactory.h"
#import "BenzView.h"
#import "BenzToolbar.h"
#import "BenzButton.h"
@implementation BenzFactory
-(UIView *)someView; {
    return [[BenzView alloc] init];
}
-(UIToolbar *)toolBar; {
    return [[BenzToolbar alloc] init];
}
-(UIButton *)button; {
    return [[BenzButton alloc] init];
}
@end
