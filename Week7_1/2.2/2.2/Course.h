//
//  Course.h
//  2.2
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SemesterType.h"
#import "Lecture.h"
@interface Course : NSObject
@property(nonatomic,assign)float hours;
@property(nonatomic,strong)SemesterType *semester;
@property(nonatomic,copy)NSString *name;

-(int)getCredits;
-(Lecture *)getLecture;
-(float)getGPA;


@end
