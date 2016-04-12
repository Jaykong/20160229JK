//
//  ImageTransformFilter.m
//  DecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ImageTransformFilter.h"
#import <UIKit/UIKit.h>
@implementation ImageTransformFilter
-(void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(context, _transform);
}
- (instancetype)initWithConponent:(id<ImageConponent>)conponent tranform:(CGAffineTransform) tranform
{
    self = [super init];
    if (self) {
        self.component = conponent;
        self.transform = tranform;
    }
    return self;
}
@end
