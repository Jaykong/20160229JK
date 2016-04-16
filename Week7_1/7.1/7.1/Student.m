

//
//  Student.m
//  7.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Student.h"

@implementation Student
-(id)copyWithZone:(NSZone *)zone {
   Student *object = [[[self class] allocWithZone:zone] init];
    object.name = _name;
    object.age = _age;
    return object;
    
}
@end
