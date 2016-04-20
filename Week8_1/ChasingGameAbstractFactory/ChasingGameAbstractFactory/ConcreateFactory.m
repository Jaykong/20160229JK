

//
//  ConcreateFactory.m
//  ChasingGameAbstractFactory
//
//  Created by kongyunpeng on 4/19/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ConcreateFactory.h"
#import "Character.h"
@implementation ConcreateFactory
+(Character *)player {
    Character *character = [[Character alloc] init];
    character.strength = 50.0;
    character.starmina = 25.0;
    character.intelligence = 75.0;
    character.agility = 65.0;
    character.agressive = 35.0;
    return character;
}

+(Character *)enemy {
    Character *character = [[Character alloc] init];
    character.strength = 80;
    character.starmina = 65;
    character.intelligence = 35;
    character.agility = 25;
    character.agressive = 95;
    return character;
}
@end
