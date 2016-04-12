//
//  ViewController.m
//  StrategyPatternReview
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

-(void)textFieldDidEndEditing:(UITextField *)textField {
    CustomTextField *customTextField = (CustomTextField *)textField;
    [customTextField valide];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
