//
//  FirstViewController.m
//  NotificationCenterPassValue
//
//  Created by trainer on 4/1/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(colorChanged:) name:@"TestNotification" object:nil];
}
-(void)colorChanged:(NSNotification *)noti {
  self.view.backgroundColor = noti.userInfo[@"color"];

//    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
//    redView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:redView];
    
}
-(void)viewWillDisappear:(BOOL)animated {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
