//
//  ImageTransformFilter.m
//  DecoratorPattern_Review
//
//  Created by trainer on 4/15/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ImageTransformFilter.h"
#import <UIKit/UIKit.h>
@implementation ImageTransformFilter
-(void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGAffineTransform transform = CGAffineTransformMakeTranslation(100, -100);
    CGContextConcatCTM(context, transform);
}
@end
