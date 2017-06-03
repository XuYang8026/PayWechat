//
//  TLPayViewControllerViewController.m
//  TLChat
//
//  Created by Yang on 17/6/3.
//  Copyright © 2017年 李伯坤. All rights reserved.
//

#import "TLPayViewControllerViewController.h"
#import "YQPayKeyWordVC.h"
#import "TLSuccessViewController.h"

@interface TLPayViewControllerViewController ()

@end

@implementation TLPayViewControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"转账";
    self.payBtn.layer.cornerRadius = 5;
    // Do any additional setup after loading the view from its nib.
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [_moneyTxt becomeFirstResponder];
}
- (IBAction)payAction:(id)sender {
    __block id vc = self.navigationController.rootViewController;
    [[YQPayKeyWordVC alloc] showInViewController:self money:_moneyTxt.text.floatValue completed:^(CGFloat money) {
        NSLog(@"input ok %.2f",money);
        [vc setHidesBottomBarWhenPushed:YES];
        [SVProgressHUD showWithStatus:@"微信支付..."];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [SVProgressHUD dismiss];
            TLSuccessViewController * successVC = [TLSuccessViewController new];
            successVC.money = [NSString stringWithFormat:@"%.2f",money];
            [[vc navigationController] pushViewController:successVC animated:YES];
            [vc setHidesBottomBarWhenPushed:NO];
        });
    }];
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
