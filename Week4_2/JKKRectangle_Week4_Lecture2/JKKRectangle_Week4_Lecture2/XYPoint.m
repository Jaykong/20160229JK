//
//  XYPoint.m
//  JKKRectangle_Week4_Lecture2
//
//  Created by trainer on 3/23/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
- (instancetype)initWithX:(int)x y:(int)y
{
    self = [super init];
    if (self) {
        [self setX:x y:y];
    }
    return self;
}
-(void)setX:(int)x y:(int)y {
    self.x = x;
    self.y = y;
}
-(void)print {
    NSLog(@"the point is (%i,%i)",_x,_y);
}
-(id)copyWithZone:(NSZone *)zone {
    XYPoint *point = [[[self class] allocWithZone:zone] init];
    point.x = self.x;
    point.y = self.y;
    return  point;
}

@end
