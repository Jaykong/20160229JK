//
//  PersonSelector.h
//  JKKFactoryMethod
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface PersonSelector : NSObject
//+(NSString *)selectName:(int)age;
//+(int)selectHeight:(int)age;

+(Person *)selectPerson:(int)age;
@end
