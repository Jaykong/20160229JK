//
//  Square.m
//  Inheritance
//
//  Created by trainer on 3/9/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Square.h"
#import "JKKRectangle.h"
@implementation Square
// is a  猫是动物
// has a 猫有眼睛
-(instancetype)initWithSide:(int)s {
    if (self = [super init]) {
        rect = [[JKKRectangle alloc] init];
        side = s;
    }
    return self;
}

-(int)area {
    return rect.area;
}
@end
