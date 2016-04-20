//
//  Director.h
//  ChasingGameBuilder
//
//  Created by kongyunpeng on 4/20/16.
//  Copyright © 2016 universal. All rights reserved.
//
#import <Foundation/Foundation.h>
@class Character;
@class CharaterBuilder;
@interface Director : NSObject
-(Character *)enemyCharacter:(CharaterBuilder *)builder;
-(Character *)playerCharacter:(CharaterBuilder *)builder;
@end
