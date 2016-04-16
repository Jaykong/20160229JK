//
//  ImageFilter.h
//  DecoratorPattern_Review
//
//  Created by trainer on 4/15/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageConponent.h"
@interface ImageFilter : NSObject<ImageConponent>
@property (nonatomic,strong) id<ImageConponent>conponent;
-(void)apply;
- (instancetype)initWithConponent:(id<ImageConponent>)conponent;
@end
