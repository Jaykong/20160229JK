//
//  AttackHandler.h
//  ChainOfResponsibility
//
//  Created by kongyunpeng on 4/12/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"
@interface AttackHandler : NSObject
@property(nonatomic,strong)AttackHandler *handler;
-(void)handleAttack:(Attack *)attack;
@end
