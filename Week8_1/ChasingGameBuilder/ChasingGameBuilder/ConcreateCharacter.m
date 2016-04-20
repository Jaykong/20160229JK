

//
//  ConcreateCharacter.m
//  ChasingGameBuilder
//
//  Created by kongyunpeng on 4/20/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ConcreateCharacter.h"
#import "Character.h"
@implementation ConcreateCharacter

-(CharaterBuilder *)buildStatima:(float)value; {
    self.character.power *= value;
    self.character.defense *= value;
    [super buildStatima:value];
    return self;
}
-(CharaterBuilder *)buildIntelegence:(float)value; {
    self.character.power *= value;
    
    
    return self;
    
}
-(CharaterBuilder *)buildAgility:(float)value; {
    self.character.power *= value;
    
    
    return self;
}
-(CharaterBuilder *)buildAgressive:(float)value; {
    self.character.power *= value;
    
    
    return self;
}
@end
