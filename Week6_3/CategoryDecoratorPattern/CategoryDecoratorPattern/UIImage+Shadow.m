//
//  UIImage+Shadow.m
//  CategoryDecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "UIImage+Shadow.h"
#import "UIImage+BaseFilter.m"
@implementation UIImage (Shadow)

-(UIImage *)imageWithShadow{
    CGContextRef context = [self beginContext];
    CGSize size = CGSizeMake(10, -10);
    CGContextSetShadow(context, size, 100);
    
    UIImage *image = [self getImageFromCurrentImageContext];
    return image;
}
@end
