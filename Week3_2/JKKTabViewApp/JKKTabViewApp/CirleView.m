//
//  Rect2View.m
//  JKKTabViewApp
//
//  Created by trainer on 3/16/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "CirleView.h"

@implementation CirleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [[UIColor greenColor] setFill];
    [path fill];
}


@end
