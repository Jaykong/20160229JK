



//
//  FireAttackHandler.m
//  ChainOfResponsibility
//
//  Created by kongyunpeng on 4/12/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "FireAttackHandler.h"

@implementation FireAttackHandler
-(void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[FireAttack class]]) {
        NSLog(@"I can handle Fire ,let me");
    } else {
        [super handleAttack:attack];
    }
}
@end
