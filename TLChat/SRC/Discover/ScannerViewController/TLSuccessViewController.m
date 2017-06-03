//
//  TLSuccessViewController.m
//  TLChat
//
//  Created by Yang on 17/6/4.
//  Copyright © 2017年 李伯坤. All rights reserved.
//

#import "TLSuccessViewController.h"

@interface TLSuccessViewController ()

@end

@implementation TLSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _moneyLbl.text = _money;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
- (IBAction)okAction:(id)sender {
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleDefault;
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
