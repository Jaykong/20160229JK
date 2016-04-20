//
//  HandleAttack.m
//  ChainOfRes
//
//  Created by trainer on 4/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "HandleAttack.h"

@implementation HandleAttack
-(void)handleAttack:(Attack *)attack {
    [_nextResponder handleAttack:attack];
}
@end
