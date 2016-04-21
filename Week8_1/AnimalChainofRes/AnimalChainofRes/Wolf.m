

//
//  Wolf.m
//  AnimalChainofRes
//
//  Created by trainer on 4/20/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Wolf.h"
#import "Goat.h"
@implementation Wolf
-(void)catchSomeAnimal:(PetAnimal *)petAnimal {
    if ([petAnimal isKindOfClass:[Goat class]]) {
        NSLog(@"wolf catches goat");
    } else {
        [super catchSomeAnimal:petAnimal];
    }
    
}

@end
