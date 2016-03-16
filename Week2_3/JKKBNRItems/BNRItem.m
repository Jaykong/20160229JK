//
//  BNRItem.m
//  JKKBNRItems
//
//  Created by trainer on 3/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "BNRItem.h"
@interface BNRItem()
@property int itemSize;
@end
@implementation BNRItem
-(instancetype)initWithName:(NSString *)name date:(NSDate *)date value:(int)value serial:(NSString *)serial {
    if (self = [super init]) {
        self.itemName = name;
        self.createdDate = date;
        self.serialNuber = serial;
        self.value = value;
    }
    return self ;
}


-(NSString *)description {
    if (!_itemName) {
        NSLog(@"the item name is nil");
    } else {
        NSLog(@"the item name is not nil");
    }
  return @"";
}
@end
