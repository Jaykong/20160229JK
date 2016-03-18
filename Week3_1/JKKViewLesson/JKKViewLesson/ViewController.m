//
//  ViewController.m
//  JKKViewLesson
//
//  Created by trainer on 3/14/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "JKView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // CGPoint : 坐标系里的一个点
   //CGSize: 视图的宽高
   //CGRect: 矩形框:包含一个原点和宽高
   //frame == CGRect
   //bounds == CGRect
    
    
    CGPoint point = CGPointMake(10, 10);//CoreGraphics
    CGSize size = CGSizeMake(100, 100);
    CGRect rect = CGRectMake(10, 10, 100, 100);
   
    self.view.backgroundColor = [UIColor colorWithRed:1.0 green:0.2572 blue:0.3592 alpha:1.0];
    
    UIView *subView = [[UIView alloc] initWithFrame:rect];
    subView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:subView];
    
    //[self.view.layer addSublayer:subView.layer];
    CGRect rect2 = CGRectMake(100, 100, 100, 100);
    
    UIView *subView2 = [[UIView alloc] initWithFrame:rect2];
    subView2.backgroundColor = [UIColor colorWithRed:0.9453 green:0.4787 blue:1.0 alpha:1.0];
    
    [self.view addSubview:subView2];
    for (UIView *view in self.view.subviews) {
        NSLog(@"%@",view);
    }
    
    
    JKView *jkView = [[JKView alloc] initWithFrame:rect];
    jkView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:jkView];
    //[self.view layoutSubviews];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
