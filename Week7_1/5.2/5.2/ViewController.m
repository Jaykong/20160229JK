//
//  ViewController.m
//  5.2
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ViewController.h"
#import "RedView.h"
#import "BlueView.h"
#import "YellowView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width * 3, _scrollView.frame.size.height);
    
    CGRect rect1 = CGRectMake(0, 0, _scrollView.frame.size.width, _scrollView.frame.size.height);
   CGRect rect2 = CGRectMake(_scrollView.frame.size.width , 0, _scrollView.frame.size.width, _scrollView.frame.size.height);
    CGRect rect3 = CGRectMake(_scrollView.frame.size.width * 2, 0, _scrollView.frame.size.width, _scrollView.frame.size.height);
    
    RedView *redView = [[RedView alloc] initWithFrame:rect1];
    BlueView *blueView = [[BlueView alloc] initWithFrame:rect2];
    YellowView *yellowView = [[YellowView alloc] initWithFrame:rect3];
    
    [_scrollView addSubview:redView];
    [_scrollView addSubview:blueView];
    [_scrollView addSubview:yellowView];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
