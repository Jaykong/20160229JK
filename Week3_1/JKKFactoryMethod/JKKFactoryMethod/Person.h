//
//  Person.h
//  JKKFactoryMethod
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property int age;
@property NSString *name;
@property int sex;
@property float height;

+(Person *)selectPerson:(int)age;

@end
