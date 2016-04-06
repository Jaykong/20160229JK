//
//  ViewController.m
//  BlockPassValue
//
//  Created by trainer on 3/30/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textlLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PushViewController *pushViewController  =  segue.destinationViewController;
    pushViewController.passValueBlock = ^(NSString *text) {
        _textlLabel.text = text;
    };
    //passValueBlock的生命周期在这个方法体内
    NSLog(@"%@",pushViewController.passValueBlock);
    
}

@end
