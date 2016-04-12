//
//  ImageTransformFilter.h
//  DecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter
@property(nonatomic,assign)CGAffineTransform transform;
- (instancetype)initWithConponent:(id<ImageConponent>)conponent tranform:(CGAffineTransform) tranform;
@end
