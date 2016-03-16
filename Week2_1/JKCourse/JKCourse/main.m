//
//  main.m
//  JKCourse
//
//  Created by trainer on 3/7/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface SemesterType:NSObject {
    
}
@end

@implementation SemesterType


@end

@interface Lecturer : NSObject

@end

@implementation Lecturer



@end

@interface Course : NSObject{
    NSString *name;
    SemesterType *semester;
    float hours;
}
-(int)getCredits;
-(Lecturer *)getLecturer;
-(float)getGPA;
@end

@implementation Course

{
    
    
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
    }
    return 0;
}
