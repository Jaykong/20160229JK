//
//  CharaterBuilder.h
//  ChasingGameBuilder
//
//  Created by kongyunpeng on 4/20/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
@interface CharaterBuilder : NSObject
@property (nonatomic,strong) Character *character;
-(CharaterBuilder *)buildCharacter;
-(CharaterBuilder *)buildStatima:(float)value;
-(CharaterBuilder *)buildIntelegence:(float)value;
-(CharaterBuilder *)buildAgility:(float)value;
-(CharaterBuilder *)buildAgressive:(float)value;
@end
