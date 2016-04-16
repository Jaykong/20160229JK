

//
//  Person.m
//  3.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Person.h"

@implementation Person

-(NSString *)name {
    return _name;
}
-(void)setName:(NSString *)n {
    _name = n;
}

-(NSInteger)age {
    return _age;
}

-(void)setAge:(NSInteger)age {
    _age = age;
}


-(BOOL)isMarried {
    return _isMarried;
}

-(void)setIsMarried:(BOOL)isM {
    _isMarried = isM;
}

-(void)print {
    NSLog(@"name:%@,age:%li,isMarried,%i",_name,(long)_age,_isMarried);
}

-(instancetype)initWithName:(NSString *)name age:(NSInteger)age isMarried:(BOOL)isMarried;
{
    self = [super init];
    if (self) {
        self.name = name;
        _isMarried = isMarried;
        _age = age;
    }
    return self;
}
@end
