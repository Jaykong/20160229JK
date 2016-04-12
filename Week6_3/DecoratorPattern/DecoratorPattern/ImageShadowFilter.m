//
//  ImageShadowFilter.m
//  DecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ImageShadowFilter.h"
#import <UIKit/UIKit.h>
@implementation ImageShadowFilter

-(void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShadow(context, CGSizeMake(-25, 15), 20);
}

@end
