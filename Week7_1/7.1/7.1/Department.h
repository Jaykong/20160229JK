//
//  Department.h
//  7.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Department : NSObject<NSCopying>

@property(nonatomic,strong) NSMutableArray *students;
@property(nonatomic,copy)NSString *name;
- (instancetype)initWithStudents;
@end

