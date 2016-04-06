//
//  ViewController.m
//  JKCoreData
//
//  Created by trainer on 3/28/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "SelectedViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *dataArr;
    NSInteger row;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataArr = [NSMutableArray array];
     [Person addWithName:@"lily1" age:@20];
     [Person addWithName:@"lily2" age:@20];
     [Person addWithName:@"lily3" age:@20];
    
    dataArr = [Person getPersons];
   
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section {
    return dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    Person *p = dataArr[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@: %@",p.name,p.age];
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    UITableViewCell *cell = (UITableViewCell *)sender;
   
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
   
   // NSIndexPath *path = [NSIndexPath indexPathForRow:<#(NSInteger)#> inSection:<#(NSInteger)#>];
    SelectedViewController *controller = segue.destinationViewController;
    
    Person *p = dataArr[indexPath.row];
    controller.title = p.name;
   
}


@end
