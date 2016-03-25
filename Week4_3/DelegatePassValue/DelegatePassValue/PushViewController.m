//
//  PushViewController.m
//  DelegatePassValue
//
//  Created by trainer on 3/25/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   _pushTextView.text = [_delegate sendValue:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
   _pushTextView.text =  [_delegate sendValue:_pushTextView.text];
}

@end
