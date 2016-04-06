//
//  SecondViewController.m
//  NotificationCenterPassValue
//
//  Created by trainer on 4/1/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated {
    UIColor *color = [UIColor blueColor];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"TestNotification" object:nil userInfo:@{@"color":color}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
