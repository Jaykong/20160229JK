//
//  main.m
//  JKKRectangle_Week4_Lecture2
//
//  Created by trainer on 3/23/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "Rectangle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XYPoint *point1 = [[XYPoint alloc] initWithX:2 y:3];
      XYPoint *point2 =  [point1 copy];
        [point1 print];
        [point2 print];
        
        Rectangle *rect = [[Rectangle alloc] initWithWidth:10 height:10];
        rect.origin = point1;
        
        Rectangle *rect1 = [rect copy];
        [rect print];
        [rect1 print];
        NSLog(@"-------------------------------");
        [point1 setX:3 y:8];
        
        [rect print];
        [rect1 print];
        
        //
        
        
        
    }
    return 0;
}
