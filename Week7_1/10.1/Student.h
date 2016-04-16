//
//  Student.h
//  10.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSManagedObject

+(void)addStudentWithName:(NSString *)name age:(NSInteger)age;
+(NSArray *)getAllStudents;

@end

NS_ASSUME_NONNULL_END

#import "Student+CoreDataProperties.h"
