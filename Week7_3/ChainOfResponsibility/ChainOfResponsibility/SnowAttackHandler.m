
//
//  SnowAttackHandler.m
//  ChainOfResponsibility
//
//  Created by kongyunpeng on 4/12/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "SnowAttackHandler.h"

@implementation SnowAttackHandler
-(void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[SnowAttack class]]) {
        NSLog(@"I can handle Snow");
    } else {
        [super handleAttack:attack];
    }
}
@end
