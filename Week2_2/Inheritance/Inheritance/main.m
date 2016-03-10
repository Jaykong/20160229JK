//
//  main.m
//  Inheritance
//
//  Created by trainer on 3/9/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKKCalculator.h"
#import "Cat.h"
#import "Animal.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        JKKCalculator *jkCal = [[JKKCalculator alloc] init];
//        [jkCal unImplentation];
    
        Animal *animal = [[Animal alloc] init];
        [animal print];
        
        Cat *cat = [[Cat alloc] init];
        [cat print];
        [cat miaomiaomiao];
        [animal miaomiaomiao];
        
    }
    return 0;
}
