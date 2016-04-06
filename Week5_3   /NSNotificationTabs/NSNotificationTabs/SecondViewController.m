//
//  SecondViewController.m
//  NSNotificationTabs
//
//  Created by trainer on 4/1/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    UIColor *blueColor = [UIColor blueColor];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"TestNotification" object:nil userInfo:@{@"color":blueColor}];
}
-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
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
