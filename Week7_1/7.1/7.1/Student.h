//
//  Student.h
//  7.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Student : NSObject<NSCopying>
@property(nonatomic,copy) NSString *name;
@property(nonatomic,assign) NSInteger age;
@end
