//
//  Rectangle.h
//  JKKRectangle_Week4_Lecture2
//
//  Created by trainer on 3/23/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
@interface Rectangle : NSObject<NSCopying>
@property(nonatomic,assign) int width,height;
@property(nonatomic,copy) XYPoint *origin;
- (instancetype)initWithWidth:(int)w height:(int)h;
-(void)print;
@end
