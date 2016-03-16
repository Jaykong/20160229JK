//the meaning of nil
#import <Foundation/Foundation.h>
#import "BNRItem.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRItem *item = [[BNRItem alloc] init];
        item.itemName = @"apple";
        item.serialNuber = @"12345kyp";
        NSLog(@"%@ %@ %@ %i",item.itemName,item.createdDate,item.serialNuber,item.value);
        [item description];
        
        BNRItem *item2 = [[BNRItem alloc] initWithName:@"laptop" date:[NSDate date] value:5000 serial:@"XZG111144"];
        
        NSLog(@"%@ %@ %@ %i",item2.itemName,item2.createdDate,item2.serialNuber,item2.value);
        
        
        
        
        
        
        
        
    }
    return 0;
}
