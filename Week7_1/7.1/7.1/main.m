//
//  main.m
//  7.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Department.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Student *student = [[Student alloc] init];
        student.name = @"kelly";
        student.age = 8;
        
        Student *stu2 = [student copy];
        NSLog(@"%@,%li",stu2.name,(long)stu2.age);
        
       
        Department *d1 = [[Department alloc] initWithStudents];
        d1.name = @"computer science";
        [d1.students addObject:student];
        
        Department *dCopy = [d1 copy];
        
        
        NSLog(@"%p",d1.students[0]);
        NSLog(@"%p",dCopy.students[0]);
        
        
        
    }
    return 0;
}
