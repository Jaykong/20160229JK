


//
//  Character.m
//  ChasingGameAbstractFactory
//
//  Created by kongyunpeng on 4/19/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Character.h"

@implementation Character
- (instancetype)init
{
    self = [super init];
    if (self) {
        _starmina = 1.0;
        _strength = 1.0;
        _intelligence = 1.0;
        _agressive = 1.0;
        _agility = 1.0;
        _protection = 1.0;
        _power = 1.0;
    }
    return self;
}

-(void)setStarmina:(float)starmina {
    _power *= starmina;
    _protection *= starmina;
}
-(void)setStrength:(float)strength {
    _power *= strength;
    _protection *= strength;
}

-(void)setIntelligence:(float)intelligence {
    _protection *= intelligence;
    _power /= intelligence;
}
-(void)setAgility:(float)agility {
    _protection *= agility;
    _power /= agility;
}
-(void)setAgressive:(float)agressive {
    _protection /= agressive;
    _power *= agressive;
}
@end
