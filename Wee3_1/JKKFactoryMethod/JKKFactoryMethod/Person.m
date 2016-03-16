//
//  Person.m
//  JKKFactoryMethod
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Person.h"
#import "Child.h"
#import "Adult.h"
#import "Teen.h"
@implementation Person
+(Person *)selectPerson:(int)age {
//    Person *p;
//    if (age >= 18) {
//        p = [[Adult alloc] init];
//    } else if (age < 13) {
//        p = [[Child alloc] init];
//    } else {
//        p = [[Teen alloc] init];
//    }
//    return p;
    Class p;
    if (age >= 18) {
        p = [Adult class];
    } else if (age < 13) {
        p = [Child class];
    } else {
        p = [Teen class];
    }
    
    return [p selectPerson:age];
}
@end
