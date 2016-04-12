//
//  Decorator.m
//  TranformImage
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Decorator.h"
@implementation Decorator

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI / 4);
    CGContextConcatCTM(context, transform);
    [_image drawInRect:rect];
}


@end
