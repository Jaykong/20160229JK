//
//  TableViewController.m
//  JKTableViewController
//
//  Created by trainer on 3/28/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "LabelCell.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //估计Cell的行高
    self.tableView.estimatedRowHeight = 200;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    /*
     重用机制：(对象沲:object pool):一系列有相似形为的对象
     好处：
     1.性能提升
     2.减少内存
     
     
     在我们项目很这样的Cells:
     Identifier: "Cell","Cell2"
     使用dequeue
     看队列里有没有Cell
     如果没有创建一个这样的Cell
     这个Cell现在是在屏幕上的
     如果我们滑动让这个Cell消失
     这个Cell被Push到队列
     
     如果有这样一个Cell,我们就从队列取出
     队列中少了一个这样的Cell
     
     
     
     */
    /*
     indexPath的属性
     1.row
     2.section
     
      NSIndexPath *path = [NSIndexPath indexPathForRow:0 inSection:0];
     */
   
    
    if (indexPath.row == 0) {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ButtonCell" forIndexPath:indexPath];
    cell.textLabel.text = @"show";
    return cell;
    }
    
    
    if (indexPath.row == 1) {
        LabelCell * cell = [tableView dequeueReusableCellWithIdentifier:@"LabelCell"];
        
        cell.titleLabel.text = @"Override to support conditional editing of the table view. - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {// Return NO if you do not want the specified item to be editable.// Override to support editing the table view.- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {if (editingStyle == UITableViewCellEditingStyleDelete) {// Delete the row from the data source[tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];} else if (editingStyle == UITableViewCellEditingStyleInsert) {Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view}}";
       
        return cell;
    }

    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //返回具体一行的行高
    //ios9.0以上才支持
    //如果你给出一个cell的行高估算值，系统会给你一个根所估算值得出的一个行高
    if (indexPath.row == 1) {
        return UITableViewAutomaticDimension;
    }
    return 44;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
