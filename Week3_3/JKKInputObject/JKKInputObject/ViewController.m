//
//  ViewController.m
//  JKKInputObject
//
//  Created by trainer on 3/18/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"
@interface ViewController ()

@end

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
   PushViewController *controller = segue.destinationViewController;
   NSString  *_inpuText = [NSString stringWithFormat:@"%@\n%@",_textFiled1.text,_textField2.text];
    controller.passedText = _inpuText;
}
@end
