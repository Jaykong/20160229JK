



//
//  DecoratorView.m
//  DecoratorPattern_Review
//
//  Created by trainer on 4/15/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "DecoratorView.h"

@implementation DecoratorView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [_image drawInRect:rect];
}


@end
