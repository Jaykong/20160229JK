//
//  Square.h
//  1.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Square : NSObject
@property(nonatomic,assign) double side;
-(double)perimeter;
-(double)area;
- (instancetype)initWithSide:(double)side;
@end
