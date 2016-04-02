//
//  TableViewController.m
//  Demo2_tableViewCellAnimation
//
//  Created by  江苏 on 16/3/6.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end
static NSString* indentifier=@"cell";
@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:indentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier forIndexPath:indexPath];
    UILabel* label=[[UILabel alloc]initWithFrame:CGRectMake(cell.frame.origin.x+20, cell.frame.origin.y+10, cell.frame.size.width-40, cell.frame.size.height-20)];
    label.text=@"Just One Last Dance!";
    cell.backgroundColor=[UIColor yellowColor];
    [cell addSubview:label];
    return cell;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    /*
    CABasicAnimation* animation=[CABasicAnimation animationWithKeyPath:@"transform"];
    animation.toValue=[NSValue valueWithCATransform3D:CATransform3DIdentity];
    animation.fromValue=[NSValue valueWithCATransform3D:CATransform3DMakeRotation(-M_PI_2, 1.0, 1.0, 0.0)];
    animation.duration=0.8;
    animation.removedOnCompletion=YES;
    [cell.layer addAnimation:animation forKey:nil];
     */
    cell.layer.transform=CATransform3DMakeScale(0.1, 0.1, 0.1);
    [UIView animateWithDuration:0.5 animations:^{
        cell.layer.transform=CATransform3DMakeScale(1.0, 1.0, 1.0);
    } completion:nil];
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
