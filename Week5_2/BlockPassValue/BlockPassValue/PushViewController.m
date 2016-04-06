//
//  PushViewController.m
//  BlockPassValue
//
//  Created by trainer on 3/30/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    _passValueBlock(_textView.text);
    
   
    //assing blokc literal to a week property ,object will be released after assignment
    //这个assign发生在prepare for segue里面
    //经测试_passValueBlock在赋值后值为NULL，那就是它不是一个指针，而是直接引用的区域，这个说法是错误的！
}
-(void)dealloc {
    NSLog(@"%@",self);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
