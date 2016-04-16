//
//  PushViewController.h
//  4.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PushViewControllerDelegate;
@interface PushViewController : UIViewController
@property (nonatomic,weak) id delegate;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end
@protocol PushViewControllerDelegate
-(void)passValue:(NSString *)text;
@end