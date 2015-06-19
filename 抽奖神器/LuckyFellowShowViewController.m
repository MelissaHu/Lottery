//
//  LuckyFellowShowViewController.m
//  抽奖神器
//
//  Created by iwege on 6/1/15.
//  Copyright (c) 2015 melissa. All rights reserved.
//

#import "LuckyFellowShowViewController.h"

@interface LuckyFellowShowViewController ()

@end

@implementation LuckyFellowShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ShowOwnner.text = _data;
    // Do any additional setup after loading the view.
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
