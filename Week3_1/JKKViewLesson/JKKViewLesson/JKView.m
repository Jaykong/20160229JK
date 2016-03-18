//
//  JKView.m
//  JKKViewLesson
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "JKView.h"

@implementation JKView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [[UIColor redColor] setFill];
    [path fill];
   
}


@end
