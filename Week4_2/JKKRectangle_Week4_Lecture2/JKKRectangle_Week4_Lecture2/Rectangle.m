//
//  Rectangle.m
//  JKKRectangle_Week4_Lecture2
//
//  Created by trainer on 3/23/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.origin = [[XYPoint alloc] init];
    }
    return self;
}

- (instancetype)initWithWidth:(int)w height:(int)h
{
    self = [super init];
    if (self) {
        self.origin = [[XYPoint alloc] init];
        [self setWidth:w height:h];
        
    }
    return self;
}

-(void)setWidth:(int)width height:(int)height {
    self.height = height;
    self.width = width;
}

-(void)print {
    NSLog(@"the rectangle (%i,%i,%i,%i)",_origin.x,_origin.y,_width,_height);
}
-(id)copyWithZone:(NSZone *)zone {
    Rectangle *rect = [[[self class] allocWithZone:zone] init];
    rect.width = _width;
    rect.height = _height;
    rect.origin = [_origin copy];
    return rect;
}



@end
