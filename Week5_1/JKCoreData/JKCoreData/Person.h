//
//  Person.h
//  JKCoreData
//
//  Created by trainer on 3/28/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSManagedObject

+(Person *)addWithName:(NSString *)name age:(NSNumber *)age;
+(NSArray *)getPersons;
@end

NS_ASSUME_NONNULL_END

#import "Person+CoreDataProperties.h"
