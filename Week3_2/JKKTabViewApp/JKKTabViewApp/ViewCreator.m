//
//  ViewCreator.m
//  JKKTabViewApp
//
//  Created by trainer on 3/16/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewCreator.h"
#import "CirleView.h"
#import "RectView.h"
@implementation ViewCreator
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
