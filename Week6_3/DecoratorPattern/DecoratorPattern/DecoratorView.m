//
//  DecoratorView.m
//  DecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "DecoratorView.h"

@implementation DecoratorView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [_conponent drawInRect:rect];
}

@end
