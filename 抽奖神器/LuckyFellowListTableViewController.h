//
//  LuckyFellowListTableViewController.h
//  抽奖神器
//
//  Created by iwege on 6/1/15.
//  Copyright (c) 2015 melissa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import  "LuckyFellowItem.h"

@interface LuckyFellowListTableViewController : UITableViewController

-(IBAction)unwindToList:(UIStoryboardSegue *)segue;

@property NSMutableArray *Fellows;
@property NSString *draw;

@end
