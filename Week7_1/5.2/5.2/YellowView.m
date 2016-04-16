


//
//  YellowView.m
//  5.2
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "YellowView.h"

@implementation YellowView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect rect = CGRectMake(frame.size.width, 0, frame.size.width, frame.size.height);
        frame = rect;
         self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}
@end
