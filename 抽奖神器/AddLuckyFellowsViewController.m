//
//  AddLuckyFellowsViewController.m
//  抽奖神器
//
//  Created by iwege on 6/1/15.
//  Copyright (c) 2015 melissa. All rights reserved.
//

#import "AddLuckyFellowsViewController.h"

@interface AddLuckyFellowsViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddLuckyFellowsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.saveButton)
        return;
    if (self.textField.text.length >0) {
        self.luckyFellowItem = [[LuckyFellowItem alloc]init];
        self.luckyFellowItem.itemName = self.textField.text;
        self.luckyFellowItem.completed = YES;
    }
    
    
    
    }


@end
