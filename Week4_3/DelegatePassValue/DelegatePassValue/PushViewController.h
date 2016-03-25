//
//  PushViewController.h
//  DelegatePassValue
//
//  Created by trainer on 3/25/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PushViewControllerDelegate ;
@interface PushViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *pushTextView;
@property (nonatomic,weak) id <PushViewControllerDelegate>delegate;
@end

@protocol PushViewControllerDelegate
-(NSString *)sendValue:(NSString *)message;

@end