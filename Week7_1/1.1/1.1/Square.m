


//
//  Square.m
//  1.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Square.h"

@implementation Square
- (instancetype)initWithSide:(double)side
{
    self = [super init];
    if (self) {
        self.side = side;
    }
    return self;
}
-(double)perimeter;{
    return  _side * 4;
}
-(double)area {
    return _side * _side;
}


@end
