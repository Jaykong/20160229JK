//
//  main.m
//  JKUML
//
//  Created by trainer on 3/7/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Professor:NSObject

@end
@implementation Professor

@end

@interface Student : NSObject
{
@public NSArray<Professor *> *lecturer;
}
@end
@implementation Student



@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
