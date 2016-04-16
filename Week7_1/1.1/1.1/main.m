//
//  main.m
//  1.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//
#import "Square.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *square = [[Square alloc] initWithSide:13.5];
        NSLog(@"the perimeter is %.2f",[square perimeter]);
        NSLog(@"the area is %.2f",[square area]);
        
    }
    return 0;
}
