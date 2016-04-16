//
//  ViewController.m
//  4.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PushViewController *pushViewController = segue.destinationViewController;
    pushViewController.passValueBlock = ^(NSString *text) {
        _textLabel.text = text;
    };
    
    
}



@end
