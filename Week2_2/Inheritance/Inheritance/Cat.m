//
//  Cat.m
//  Inheritance
//
//  Created by trainer on 3/9/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "Cat.h"

@implementation Cat
-(void)print {
    NSLog(@"%@ numbers of leg %i",[Cat class],numberOfleg);
}
-(void)miaomiaomiao {
    NSLog(@"%@ can miaomiaomiao",[self class]);
}
@end
