//
//  main.m
//  PointerAndValue
//
//  Created by trainer on 3/9/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Fraction: NSObject {
    
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       
        //primative data type
//      long  int a = 12;
//      float b = 15;
//        double c = 15;
//        NSInteger d = 12;
        
       // pointer data type
//        NSString *str = @"12";
//        Fraction *frac = [[Fraction alloc] init];
       
        //stack（栈区) heap（堆区）
        int a = 5;
        int b = 15;
        a = b;
        printf("a value is %i\n",a);
        printf("b value is %i\n",b);
        
        b = 44;
        printf("a value is after assign c %i\n",a);
        printf("b value is after assign c %i\n",b);
        
        int *pointa = &a;
        int *pointb = &b;
        
        pointa = pointb;
        printf("a pointa is %i\n",*pointa);
        printf("a pointb is %i\n",*pointb);
       
        b = 25;
        printf("a pointa is %i\n",*pointa);
        printf("a pointb is %i\n",*pointb);
        
        NSString *firstStr = @"1st";
        NSString *secondStr = @"2nd";
        
        NSLog(@"first string is %@",firstStr);
        NSLog(@"second string is %@",secondStr);
        
        
        NSLog(@"first string is %@",firstStr);
        NSLog(@"second string is %@",secondStr);
        
        
        
    }
    return 0;
}
