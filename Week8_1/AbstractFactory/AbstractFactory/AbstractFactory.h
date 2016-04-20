//
//  AbstractFactory.h
//  AbstractFactory
//
//  Created by trainer on 4/20/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AbstractFactory : NSObject

+(AbstractFactory *)factory;
-(UIView *)someView;
-(UIToolbar *)toolBar;
-(UIButton *)button;
@end
