//
//  HandleSword.m
//  ChainOfRes
//
//  Created by trainer on 4/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "HandleSword.h"
#import "SwordAttack.h"
@implementation HandleSword
-(void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[SwordAttack class]]) {
        NSLog(@"i can handle sword attack");
    } else {
        [super handleAttack:attack];
    }
    
}
@end
