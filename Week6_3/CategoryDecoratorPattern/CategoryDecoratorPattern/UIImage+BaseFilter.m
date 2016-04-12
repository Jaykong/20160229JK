//
//  UIImage+BaseFilter.m
//  CategoryDecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "UIImage+BaseFilter.h"

@implementation UIImage (BaseFilter)
-(CGContextRef)beginContext {
    CGSize size = [self size];
//    if (NULL != /* DISABLES CODE */ (/* DISABLES CODE */ (&UIGraphicsBeginImageContextWithOptions))) {
//        UIGraphicsBeginImageContextWithOptions(size, NO, 0);
//    } else {
//        
//    }
   UIGraphicsBeginImageContext(size);
    return UIGraphicsGetCurrentContext();
}
-(UIImage *)getImageFromCurrentImageContext {
    [self drawAtPoint:CGPointZero];
    return UIGraphicsGetImageFromCurrentImageContext();
}

-(void)endContext {
    UIGraphicsEndImageContext();
}


@end
