//
//  ThirdViewController.m
//  NotificationCenterPassValue
//
//  Created by trainer on 4/1/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"TestNotification" object:nil userInfo:@{@"color":[UIColor redColor]}];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(colorChanged:) name:@"TestNotification" object:nil];
}
-(void)colorChanged:(NSNotification *)noti {
    self.view.backgroundColor = noti.userInfo[@"color"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end