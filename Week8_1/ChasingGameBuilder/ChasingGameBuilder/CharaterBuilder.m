//
//  CharaterBuilder.m
//  ChasingGameBuilder
//
//  Created by kongyunpeng on 4/20/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "CharaterBuilder.h"

@implementation CharaterBuilder
-(CharaterBuilder *)buildCharacter; {
    _character = [[Character alloc] init];
    return self;
}
-(CharaterBuilder *)buildStatima:(float)value; {
    _character.statima = value;
    
    return self;
}
-(CharaterBuilder *)buildIntelegence:(float)value; {
    _character.inteligence = value;
    
    return self;
    
}
-(CharaterBuilder *)buildAgility:(float)value; {
    _character.agility = value;
    
    return self;
}
-(CharaterBuilder *)buildAgressive:(float)value; {
    _character.agrressive = value;
    
    return self;
}
@end
