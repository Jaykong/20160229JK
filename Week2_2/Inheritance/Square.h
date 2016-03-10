//
//  Square.h
//  Inheritance
//
//  Created by trainer on 3/9/16.
//  Copyright © 2016 trainer. All rights reserved.
//
@class JKKRectangle;
#import <Foundation/Foundation.h>
//composite组合
@interface Square : NSObject
{
    JKKRectangle *rect;
    int side;
}
@end
