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
    

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textInputValueChanged:) name:@"PassValue" object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)textInputValueChanged:(NSNotification *)noti {
    NSDictionary * userInfo = noti.userInfo;
    NSString *text = userInfo[@"text"];
    _textLabel.text = text;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
