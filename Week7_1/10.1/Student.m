//
//  Student.m
//  10.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "Student.h"
#import "AppDelegate.h"
@implementation Student

+(void)addStudentWithName:(NSString *)name age:(NSInteger)age {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
  Student *stu =  [NSEntityDescription insertNewObjectForEntityForName:@"Student" inManagedObjectContext: [appDelegate managedObjectContext]];
    stu.name = name ;
    stu.age = [NSNumber numberWithInteger:age];

}

+(NSArray *)getAllStudents {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSFetchRequest *reqest = [[NSFetchRequest alloc] initWithEntityName:@"Student"];
    NSArray *stus = [[appDelegate managedObjectContext] executeFetchRequest:reqest error:nil];
    
    return  stus;
}

@end
