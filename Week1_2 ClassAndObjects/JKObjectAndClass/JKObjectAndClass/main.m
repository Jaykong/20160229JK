//
//  main.m
//  JKObjectAndClass
//
//  Created by trainer on 3/2/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import ".h"
@interface Rectangle:NSObject {
    float width; //实例变量
    float height;
}
//访问者方法
-(float)width;
-(void)setWidth:(float)w;


-(float)height;
-(void)setHeight:(float)h;

-(float)calculateAreaWithWidth:(float)w height:(float)h;
-(float)calculatePeimeterWithWidth:(float)w height:(float)h;
-(float)calculateArea;
@end

@implementation Rectangle
{
   
}
-(float)calculateAreaWithWidth:(float)w height:(float)h{
    return w * h;
}
-(float)calculatePeimeterWithWidth:(float)w height:(float)h{
    return 2 * w * h;
}
-(float)width {
    return width;
}
-(void)setWidth:(float)w {
    width = w;
}

-(void)setHeight:(float)h {
    height = h;
}
-(float)height {
    return height;
}
//
-(float)calculateArea {
    return width * height;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rect = [[Rectangle alloc] init];
        
        float result = [rect calculateAreaWithWidth:3 height:6];
        [rect setHeight:4];
        //[rect setWidth:5];
        
        NSLog(@"the height is %g",[rect height]);
        NSLog(@"the width is %g",[rect width]);
        NSLog(@"the area is %g",[rect calculateArea]);
        NSLog(@"result is %g",result);
        
    }
    return 0;
}
