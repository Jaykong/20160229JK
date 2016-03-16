
//
//  FirstViewController.m
//  JKKTabViewApp
//
//  Created by trainer on 3/16/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "FirstViewController.h"

#import "ShapeView.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ShapeView *rectView = [ShapeView createShapeView:1];
    [self.view addSubview:rectView];
    
    ShapeView *circleView = [ShapeView createShapeView:2];
    [self.view addSubview:circleView];
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
