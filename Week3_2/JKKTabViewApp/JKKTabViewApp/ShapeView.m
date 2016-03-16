//
//  RectView.m
//  JKKTabViewApp
//
//  Created by trainer on 3/16/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "RectView.h"
#import "CirleView.h"
#import "RectView.h"
@implementation ShapeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(ShapeView *)createShapeView:(int)type {
    ShapeView *shapeView;
    switch (type) {
        case 1:
            shapeView = [[RectView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
            break;
            
        case 2:
            shapeView = [[CirleView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
            break;
            
        default:
            break;
    }
    return shapeView;
}

@end
