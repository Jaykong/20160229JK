//
//  UIImage+Transform.m
//  CategoryDecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+BaseFilter.h"
@implementation UIImage (Transform)
-(UIImage *)imageWithTransform:(CGAffineTransform)transform {
  CGContextRef context =  [self beginContext];
    CGContextConcatCTM(context, transform);
    UIImage *imageout = [self getImageFromCurrentImageContext];
    [self endContext];
    return imageout;
}
@end
