

//
//  Department.m
//  7.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Department.h"
#import "Student.h"
@implementation Department

- (instancetype)initWithStudents
{
    self = [super init];
    if (self) {
        _students = [NSMutableArray array];
    }
    return self;
}
-(id)copyWithZone:(NSZone *)zone {
    Department *department = [[[self class] allocWithZone:zone] init];
    
    department.name = _name;
    
    NSMutableArray *copyedStudents = [NSMutableArray array];
    if (_students.count != 0) {
        for (Student *stu in _students) {
            [copyedStudents addObject:[stu copy]];
        }
    }
    department.students = copyedStudents;
    return department;
}
@end
