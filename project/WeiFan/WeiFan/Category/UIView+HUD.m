//
//  UIView+HUD.m
//  TRProject
//
//  Created by tarena on 16/7/13.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "UIView+HUD.h"

@implementation UIView (HUD)
- (void)showHUD{
    [self hideHUD]; //先隐藏其他的提示
    //再添加新的. 这样可以保证只有一个提示
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    //最长转圈的时间30
    [hud hide:YES afterDelay:30];
}
- (void)hideHUD{
    [MBProgressHUD hideAllHUDsForView:self animated:YES];
}
- (void)showWarning:(NSString *)msg{
    [self hideHUD];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.labelText = msg;
    [hud hide:YES afterDelay:1.5];
}


@end












