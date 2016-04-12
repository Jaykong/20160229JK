//
//  ViewController.m
//  TranformImage
//
//  Created by trainer on 4/11/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "Decorator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Decorator *decorator  = [[Decorator alloc] initWithFrame:self.view.frame];
    decorator.image = [UIImage imageNamed:@"dd"];
    
    [self.view addSubview:decorator];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
