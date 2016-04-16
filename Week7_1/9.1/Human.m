
//
//  Human.m
//  9.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Human.h"
#import "Woman.h"
#import "Man.h"
@implementation Human
+(Human *)factoryMethodWithName:(HumanType)type {
    if (type == WomanType) {
        return [[Woman alloc]init];
    } else {
        return [[Man alloc] init];
    }
    
    
}
@end
