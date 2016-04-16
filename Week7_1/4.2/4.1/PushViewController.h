//
//  PushViewController.h
//  4.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PassValueBlock) (NSString *);

@interface PushViewController : UIViewController
@property (nonatomic,strong) PassValueBlock passValueBlock;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end
