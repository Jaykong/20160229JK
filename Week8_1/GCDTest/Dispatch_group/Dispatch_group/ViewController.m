//
//  ViewController.m
//  Dispatch_group
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
    dispatch_group_t group = dispatch_group_create();
    dispatch_queue_t main = dispatch_get_main_queue();
    dispatch_queue_t global = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_group_async(group, global, ^{
        [ NSThread sleepForTimeInterval:1];
        NSLog(@"1st");
    });
    dispatch_group_async(group, global, ^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"2nd");
    });
    dispatch_group_async(group, global, ^{
        [NSThread sleepForTimeInterval:3];
        NSLog(@"3rd");
    });
    
    dispatch_group_notify(group, main, ^{
        NSLog(@"update ui");
    });
    
    //注意[ NSThread sleepForTimeInterval:1]限定了时间，就是说update ui一定要等group里所有的内容都执行完成了才会执行
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
