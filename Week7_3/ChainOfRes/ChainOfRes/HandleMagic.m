//
//  HandleMagic.m
//  ChainOfRes
//
//  Created by trainer on 4/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "HandleMagic.h"
#import "MagicAttack.h"
@implementation HandleMagic
-(void)handleAttack:(Attack *)attack {
    if ([attack isKindOfClass:[MagicAttack class]]) {
        NSLog(@"i can handle the magic");
    } else {
        [super handleAttack:attack];
    }
}

@end
