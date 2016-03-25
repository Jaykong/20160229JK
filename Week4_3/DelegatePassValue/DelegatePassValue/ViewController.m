//
//  ViewController.m
//  DelegatePassValue
//
//  Created by trainer on 3/25/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(NSString *)sendValue:(NSString *)message {
    _textView.text = message;
    return _textView.text;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PushViewController *pushViewController  =  segue.destinationViewController;
    pushViewController.delegate = self;
}
@end
