//
//  AbstractFactory.m
//  AbstractFactory
//
//  Created by trainer on 4/20/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "AbstractFactory.h"
#import "BMWFactory.h"
#import "BenzFactory.h"

@implementation AbstractFactory
+(AbstractFactory *)factory {
#define BMWFactory2 //define的名称不能同类名一样
#ifdef BMWFactory2
return [[BMWFactory alloc] init];
#else 
return [[BenzFactory alloc] init];
#endif
    
}
-(UIView *)someView; {
    return nil;
}
-(UIToolbar *)toolBar; {
    return nil;
}
-(UIButton *)button; {
    return nil;
}


@end
