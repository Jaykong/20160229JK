
#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "AddressCard.h"

void archiveSomeProperties() {
    AddressCard *card = [[AddressCard alloc] init];
    card.name = @"lily";
    card.email = @"lily@sina.com";
    NSMutableData *data = [NSMutableData data];
  NSKeyedArchiver *archiver =  [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    [archiver encodeObject:card.name forKey:AddressCardName];
    [archiver finishEncoding];
    
    [data writeToFile:@"patialNameCard" options:0 error:nil];
    
}

void readArchiveProperties() {
    NSData *data = [NSData dataWithContentsOfFile:@"patialNameCard" options:0 error:nil];
    NSKeyedUnarchiver *unarch = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
   NSString *str = [unarch decodeObjectForKey:AddressCardName];
    NSLog(@"%@",str);
    NSLog(@"%@",unarch);
    [unarch finishDecoding];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AddressCard *card = [[AddressCard alloc] init];
        card.name = @"fiona";
        card.email = @"fina@163.com";
        
        [NSKeyedArchiver archiveRootObject:card toFile:@"card"];
        
       AddressCard *newCard = [NSKeyedUnarchiver unarchiveObjectWithFile:@"card"];
        
        
        NSDictionary *dic = @{@"lucy":@10,@"jim":@20};
        [dic writeToFile:@"Person" atomically:YES];
        
        [NSKeyedArchiver archiveRootObject:dic toFile:@"Person.archive"];
        NSDictionary *newDic = [NSKeyedUnarchiver unarchiveObjectWithFile:@"Person.archive"];
        
        
      NSData *cardData = [NSKeyedArchiver archivedDataWithRootObject:card];
      AddressCard *copyCard = [NSKeyedUnarchiver unarchiveObjectWithData:cardData];
        
        AddressCard *assignCard = card;
        
        archiveSomeProperties();
        
        readArchiveProperties();
        
    }
    return 0;
}
