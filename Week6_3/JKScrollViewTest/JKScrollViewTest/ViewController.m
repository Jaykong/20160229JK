//
//  ViewController.m
//  JKScrollViewTest
//
//  Created by trainer on 4/8/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *jkscrollView;

@end

@implementation ViewController
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}
-(void)viewDidLayoutSubviews {
    self.jkscrollView.contentOffset = CGPointMake(self.jkscrollView.frame.size.width, 0);
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
