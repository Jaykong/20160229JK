//
//  PushViewController.h
//  BlockPassValue
//
//  Created by trainer on 3/30/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^Block)(NSString *);
@interface PushViewController : UIViewController
@property(nonatomic) Block passValueBlock;
//如果省略的话，默认为strong
//同是说明passValueBlock是一个指针类型
@end
