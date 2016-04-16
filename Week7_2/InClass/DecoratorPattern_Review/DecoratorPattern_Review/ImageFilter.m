


//
//  ImageFilter.m
//  DecoratorPattern_Review
//
//  Created by trainer on 4/15/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter

- (instancetype)initWithConponent:(id<ImageConponent>)conponent
{
    self = [super init];
    if (self) {
        _conponent = conponent;
    }
    return self;
}
-(void)apply {
    
}
-(id)forwardingTargetForSelector:(SEL)aSelector {
    //unrecgonizer selector出现时就调用
    if ([NSStringFromSelector(aSelector) hasPrefix:@"draw"]) {
        [self apply];
    }
    return _conponent;
}


@end
