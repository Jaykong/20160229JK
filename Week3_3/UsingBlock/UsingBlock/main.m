//
//  main.m
//  UsingBlock
//
//  Created by trainer on 3/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
     //block declare here
        Fraction *frac1 = [[Fraction alloc] init];
        [frac1 usingBlock:^() {printf("message from main in block\n");} ];
       
        NSString *x1 = @"10";
        void (^block) () = ^(void) {
            printf("the captured value is %s\n",[x1 UTF8String]);
        };
        x1 = @"15";
        block();
        printf("the real value after block execuating:%s\n",[x1 UTF8String]);
        
        
        
        
        
    }
    return 0;
}
