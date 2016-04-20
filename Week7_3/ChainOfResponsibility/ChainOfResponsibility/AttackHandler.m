


//
//  AttackHandler.m
//  ChainOfResponsibility
//
//  Created by kongyunpeng on 4/12/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler
-(void)handleAttack:(Attack *)attack {
    [_handler handleAttack:attack];
}

@end
