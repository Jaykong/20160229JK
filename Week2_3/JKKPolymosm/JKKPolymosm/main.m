//
//  main.m
//  JKKPolymosm
//
//  Created by trainer on 3/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       // id
        // isa
       // Complex *comp = [[Complex alloc] init];
         id comp = [[Complex alloc] init];
        [comp setReal:3 imaginary:5];
        // run time -> Complex type -> print method
        [comp print];
        
        id comp2 = [[Complex alloc] init];
        [comp2 setReal:2 imaginary:7];
        
        
         comp = [[Fraction alloc] init];
        [comp setTo:3 over:4];
        [comp print];
        
         comp2 = [[Fraction alloc] init];
        [comp2 setTo:1 over:5];
        
        id result = [comp add:comp2];
         result = [comp add:comp2];
        
        [result print];
        
        
        
    }
    return 0;
}
