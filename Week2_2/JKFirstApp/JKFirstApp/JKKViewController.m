//
//  JKKViewController.m
//  JKFirstApp
//
//  Created by trainer on 3/9/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "JKKViewController.h"

@interface JKKViewController () {
    NSArray *questions;
    NSArray *answers;
    NSInteger currQuestion;
    
}

@end

@implementation JKKViewController
- (IBAction)nextQuestion:(id)sender {
    ++currQuestion;
    
    if (currQuestion == 3) {
        currQuestion = 0;
    }
   _questionLbl.text = questions[currQuestion];
    
   
}
- (IBAction)showAnswer:(id)sender {
   
   _answerLbl.text = answers[currQuestion];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    questions = @[@"1.which is name??",@"2.who are you?",@"3.where are you from"];
    answers = @[@"1.Jaykong",@"2.Jaykong",@"3.Jiangxi"];
    currQuestion = 0;
    _questionLbl.text = questions[currQuestion];
    _answerLbl.text = @"???";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
