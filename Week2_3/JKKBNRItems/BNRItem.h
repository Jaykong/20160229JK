
#import <Foundation/Foundation.h>
// nil 
@interface BNRItem : NSObject

@property NSString *itemName;
@property NSDate *createdDate; // _createdDate
@property NSString *serialNuber;// _serialNuber
@property int value;
-(instancetype)initWithName:(NSString *)name date:(NSDate *)date value:(int)value serial:(NSString *)serial; // == [[BNRItem alloc] init] + -(void)setWithName:(NSString *)name date:(NSDate *)date value:(int)value serial:(NSString *)serial;

-(void)setWithName:(NSString *)name date:(NSDate *)date value:(int)value serial:(NSString *)serial;
@end
