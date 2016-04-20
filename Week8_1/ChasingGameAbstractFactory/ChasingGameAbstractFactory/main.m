//
//  main.m
//  ChasingGameAbstractFactory
//
//  Created by kongyunpeng on 4/19/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConcreateFactory.h"
#import "Character.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       Character *char1 = [ConcreateFactory enemy];
        
        NSLog(@"%f",char1.power);
        NSLog(@"%f",char1.protection);
       Character *char2 = [ConcreateFactory player];
        NSLog(@"%f",char2.power);
        NSLog(@"%f",char2.protection);
    }
    return 0;
}
