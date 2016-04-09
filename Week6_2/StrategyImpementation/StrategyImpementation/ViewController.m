//
//  ViewController.m
//  StrategyImpementation
//
//  Created by trainer on 4/8/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController
-(void)textFieldDidEndEditing:(UITextField *)textField {
    CustomTextField *customTextField  = (CustomTextField *)textField;
    [customTextField validate];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
