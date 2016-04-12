//
//  UIImage+BaseFilter.h
//  CategoryDecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BaseFilter)
-(CGContextRef)beginContext;
-(void)endContext;
-(UIImage *)getImageFromCurrentImageContext;
@end
