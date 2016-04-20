//
//  HandleAttack.h
//  ChainOfRes
//
//  Created by trainer on 4/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"
@interface HandleAttack : NSObject

@property (nonatomic,strong) HandleAttack * nextResponder;
-(void)handleAttack:(Attack *)attack;
@end
