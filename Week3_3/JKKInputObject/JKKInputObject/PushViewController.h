//
//  PushViewController.h
//  JKKInputObject
//
//  Created by trainer on 3/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PushViewController : UIViewController
@property NSString *passedText;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
