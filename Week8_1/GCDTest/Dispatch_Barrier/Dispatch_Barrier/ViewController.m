//
//  ViewController.m
//  Dispatch_Barrier
//
//  Created by kongyunpeng on 4/11/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
dispatch_queue_t mainQueue = dispatch_get_main_queue();
    
dispatch_async(dispatch_get_main_queue(), ^{
    [NSThread sleepForTimeInterval:1];
       NSLog(@"1st");
});
    
    dispatch_barrier_async(mainQueue, ^{
    [NSThread sleepForTimeInterval:2];
    NSLog(@"barrier");
});
    
    dispatch_async(mainQueue, ^{
    NSLog(@"the end");
});

   dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_apply(5, globalQueue, ^(size_t t) {
        NSLog(@"repeat 5 times%zu",t);
    });
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
