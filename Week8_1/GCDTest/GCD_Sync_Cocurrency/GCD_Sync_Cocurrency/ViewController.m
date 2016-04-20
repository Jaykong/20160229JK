//
//  ViewController.m
//  GCD_Sync_Cocurrency
//
//  Created by kongyunpeng on 4/5/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_queue_t queue = dispatch_queue_create("Test", DISPATCH_QUEUE_SERIAL);
    NSLog(@"test1");
    dispatch_sync(queue, ^{
        NSLog(@"test2");
    });
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
