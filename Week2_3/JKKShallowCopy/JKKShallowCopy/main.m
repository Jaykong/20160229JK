//
//  main.m
//  JKKShallowCopy
//
//  Created by trainer on 3/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str1 = [NSMutableString stringWithString:@"1st"];
        NSString *str2 = [str1 copy];
       //NSString *str2 = str1;
        NSLog(@"%@ %@",str1,str2);
        //str2 and str1 copy point to the same memory shallow copy
       // [str1 appendString:@"modyfied"];
       // str1 = [NSMutableString stringWithString:@"Another Str"];
        NSLog(@"%@ %@",str1,str2);

        
    }
    return 0;
}
