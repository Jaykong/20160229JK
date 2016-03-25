//
//  ViewController.h
//  DelegatePassValue
//
//  Created by trainer on 3/25/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushViewController.h"


@interface ViewController : UIViewController<PushViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

