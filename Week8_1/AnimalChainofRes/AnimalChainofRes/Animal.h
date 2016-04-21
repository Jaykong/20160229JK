//
//  Animal.h
//  AnimalChainofRes
//
//  Created by trainer on 4/20/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PetAnimal.h"
@interface Animal : NSObject
@property (nonatomic,strong)Animal *animal;

-(void)catchSomeAnimal:(PetAnimal *)petAnimal;
@end
