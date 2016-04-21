

#import "Cat.h"
#import "Mouse.h"
@implementation Cat
-(void)catchSomeAnimal:(PetAnimal *)petAnimal {
    if ([petAnimal isKindOfClass:[Mouse class]]) {
        NSLog(@"cat catches mouse");
    } else {
        [super catchSomeAnimal:petAnimal];
    }
    
}


@end
