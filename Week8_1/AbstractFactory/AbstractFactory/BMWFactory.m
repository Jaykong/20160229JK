//
//  BMWFactory.m
//  AbstractFactory
//
//  Created by trainer on 4/20/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "BMWFactory.h"
#import "BMWView.h"
#import "BMWButton.h"
#import "BMWToolbar.h"
@implementation BMWFactory
-(UIView *)someView; {
    return [[BMWView alloc] init];
}
-(UIToolbar *)toolBar; {
    return [[BMWToolbar alloc] init];
}
-(UIButton *)button; {
    return [[BMWButton alloc] init];
}
@end
