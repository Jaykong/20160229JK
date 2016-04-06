//
//  main.m
//  SwitchVsSwift
//
//  Created by trainer on 3/31/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 1;
        
       
        switch (a) {
            case 1:
                NSLog(@"case1");
                break;
            case 2:
                NSLog(@"case2");
                break;
            default:
                break;
        }
    //oc的switch必须是整型吗？
        
        
        
    }
    return 0;
}
