//
//  Director.m
//  ChasingGameBuilder
//
//  Created by kongyunpeng on 4/20/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Director.h"
#import "Character.h"
#import "CharaterBuilder.h"
@implementation Director
-(Character *)enemyCharacter:(CharaterBuilder *)builder; {
    [builder buildCharacter];
    [builder buildAgility:32];
    [builder buildStatima:100];
    return builder.character;
    
}
-(Character *)playerCharacter:(CharaterBuilder *)builder; {
    [[builder buildCharacter] buildStatima:13] ;
    
    return builder.character;
    
}
@end
