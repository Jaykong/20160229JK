//
//  Rect1View.m
//  JKKTabViewApp
//
//  Created by trainer on 3/16/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "RectView.h"

@implementation RectView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
