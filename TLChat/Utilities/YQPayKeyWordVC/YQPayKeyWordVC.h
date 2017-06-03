//
//  YQPayKeyWordVC.h
//  Youqun
//
//  Created by 王崇磊 on 16/6/1.
//  Copyright © 2016年 W_C__L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YQPayKeyWordVC : UIViewController
@property (nonatomic, copy) void (^block)(CGFloat money);
@property (nonatomic, assign) CGFloat money;

- (void)showInViewController:(UIViewController *)vc money:(CGFloat)money completed:(void (^)(CGFloat money))completed;

@end
