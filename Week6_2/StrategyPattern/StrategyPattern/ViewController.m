//
//  ViewController.m
//  StrategyPattern
//
//  Created by trainer on 4/8/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *numericTextField;
@property (weak, nonatomic) IBOutlet UITextField *alphaTextField;

@end

@implementation ViewController
-(void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField == _numericTextField) {
        
    }
    
    if (textField == _alphaTextField) {
        
    }
    
    
    
    
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
