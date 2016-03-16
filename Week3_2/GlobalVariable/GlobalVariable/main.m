
#import "Fraction.h"
#import <Foundation/Foundation.h>
#import "Calculator.h"
int gVariable = 10;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        [f1 print];
        NSLog(@"the number is %i",gInt);
        
        Calculator *calc = [[Calculator alloc] init];
        [calc print];
    }
    return 0;
}
