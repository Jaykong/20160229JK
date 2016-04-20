//
//  ViewController.m
//  GCDLoadImage
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
    //get global frame
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 0; i < 2; ++i) {
          NSLog(@"long wait operations");
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
         
        NSLog(@"update main queue");
        });
    });
    
    NSLog(@"this is the view did load frame");
    //主线程，谁先加入队列，谁先执行，主线程是一个串行的队列
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
