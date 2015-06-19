//
//  LuckyFellowListTableViewController.m
//  抽奖神器
//
//  Created by iwege on 6/1/15.
//  Copyright (c) 2015 melissa. All rights reserved.
//

#import "LuckyFellowListTableViewController.h"
#import "AddLuckyFellowsViewController.h"
#import "LuckyFellowShowViewController.h"

@interface LuckyFellowListTableViewController ()

@end

@implementation LuckyFellowListTableViewController

-(void)loadInitiaData {
    LuckyFellowItem *item1 = [[LuckyFellowItem alloc] init];
    item1.itemName = @"名字一";
    [self.Fellows addObject:item1];
    LuckyFellowItem *item2 = [[LuckyFellowItem alloc] init];
    item2.itemName = @"名字二";
    [self.Fellows addObject:item2];
    LuckyFellowItem *item3 = [[LuckyFellowItem alloc] init];
    item3.itemName = @"名字三";
    [self.Fellows addObject:item3];
    
}




-(IBAction)unwindToList:(UIStoryboardSegue *)segue{
    AddLuckyFellowsViewController *source = [segue sourceViewController];
    LuckyFellowItem *item = source.luckyFellowItem;
    if (item != nil) {
        [self.Fellows addObject:item];
        [self.tableView reloadData];
    }
    
}





-(void)viewDidLoad {
    [super viewDidLoad];
    self.Fellows = [[NSMutableArray alloc]init];
    [self loadInitiaData];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self.Fellows count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    LuckyFellowItem *luckyFollow = [self.Fellows objectAtIndex:indexPath.row];
    cell.textLabel.text = luckyFollow.itemName;
    
    if (luckyFollow.completed) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    
    return cell;
}



- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.Fellows removeObjectAtIndex:indexPath.row];
      
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
           }
}




-(void)tableview:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
   LuckyFellowItem *tappedItem = [self.Fellows objectAtIndex:indexPath.row];
    tappedItem.completed = !tappedItem.completed;
    [self.tableView reloadRowsAtIndexPaths:@[indexPath]withRowAnimation:UITableViewRowAnimationNone];
    
}





#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([self.Fellows count] > 0) {
        LuckyFellowItem *item = self.Fellows[arc4random_uniform((u_int32_t)([self.Fellows count]))];
        NSLog(@"index %@", item.itemName);
        self.draw = item.itemName;
    }
    
    LuckyFellowItem *Play = [segue destinationViewController];
    if ([Play respondsToSelector:@selector(setData:)]) {
        [Play setValue:self.draw forKey:@"data"];
    }

}

























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



@end
