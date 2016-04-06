//
//  ViewController.m
//  TestStaticDemo
//
//  Created by trainer on 3/30/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "Fraction.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Fraction *f = [[Fraction alloc] init];
    f.numerator = 3;
    f.denominator = 5;
    
    Fraction *f1 = [[Fraction alloc] init];
    f1.numerator = 1;
    f1.denominator = 5;
    
    f = [f subtract:f1];
    NSLog(@"the resutl is %i/%i",f.numerator,f.denominator);

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
