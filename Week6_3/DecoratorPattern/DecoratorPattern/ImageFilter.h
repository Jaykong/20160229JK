//
//  ImageFilter.h
//  DecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageConponent.h"
@interface ImageFilter : NSObject<ImageConponent>
-(void)apply;
-(id)forwardingTargetForSelector:(SEL)aSelector;
@property (nonatomic,strong) id<ImageConponent> component;
- (instancetype)initWithConponent:(id<ImageConponent>)component;
@end
