//
//  ImageFilter.m
//  DecoratorPattern
//
//  Created by kongyunpeng on 4/10/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter
- (instancetype)initWithConponent:(id<ImageConponent>)component
{
    self = [super init];
    if (self) {
        _component = component;
        
    }
    return self;
}
-(void)apply {
    
}
-(id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return _component;
}
@end
