//
//  XYPoint.h
//  JKKRectangle_Week4_Lecture2
//
//  Created by trainer on 3/23/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject <NSCopying>
@property (nonatomic, assign) int x ,y;

-(void)setX:(int)x y:(int)y;
- (instancetype)initWithX:(int)x y:(int)y;
-(void)print;
@end
