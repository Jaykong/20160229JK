//
//  ViewController.m
//  10.1
//
//  Created by kongyunpeng on 4/16/16.
//  Copyright © 2016 universal. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Student addStudentWithName:@"kelly" age:8];
    [Student addStudentWithName:@"john" age:10];
    
    
  NSArray *students =   [Student getAllStudents];
    
    
    for (Student *stu in students) {
        NSLog(@"%@,%@",stu.name,stu.age);
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
