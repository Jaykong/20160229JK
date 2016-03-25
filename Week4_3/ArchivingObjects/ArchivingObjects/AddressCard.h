//
//  AddressCard.h
//  ArchivingObjects
//
//  Created by trainer on 3/25/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#define AddressCardName @"AddressCardName"
#define AddressCardEmail @"AddressCardEmail"
@interface AddressCard : NSObject <NSCoding>
@property NSString *name,*email;
//,*nickName,*phoneNum,*homeNum;
//@property int qq;

@end
