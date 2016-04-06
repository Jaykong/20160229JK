//
//  Person.m
//  JKCoreData
//
//  Created by trainer on 3/28/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Person.h"
#import "AppDelegate.h"
@implementation Person

// Insert code here to add functionality to your managed object subclass
+(Person *)addWithName:(NSString *)name age:(NSNumber *)age {
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
   Person *person = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:context];
    person.name = name;
    person.age = age;
    return  person;
}
+(NSArray *)getPersons {
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Person"];
    NSError *error;
    NSArray *arr = [context executeFetchRequest:request error:&error];
    NSLog(@"%@",error);
    
    return  arr;
    
}


@end
