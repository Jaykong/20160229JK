//
//  ViewController.m
//  AbstractFactory
//
//  Created by trainer on 4/20/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "AbstractFactory.h"
#import "BMWFactory.h"
#import "BenzFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    #define BMWFactory
    AbstractFactory *factory = [AbstractFactory factory];
    //得到具体的工厂
    UIToolbar *toobar = [factory toolBar];
    UIView *someView = [factory someView];
    UIButton *button = [factory button];
    
    NSLog(@"%@",[toobar class]);
    NSLog(@"%@",[someView class]);
    NSLog(@"%@",[button class]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
