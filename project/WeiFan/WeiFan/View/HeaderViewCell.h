//
//  HeaderViewCell.h
//  WeiFan
//
//  Created by tarena0026 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderViewCell : UITableViewCell
@property (nonatomic) UIImageView *userHeadPortrait;
@property (nonatomic) UIVisualEffectView *visualEffectView;
@property (nonatomic) UIButton *user;
@property (nonatomic) UILabel *userName;
@property (nonatomic) UILabel *integral;//积分
@property (nonatomic) UIButton *signIn;//签到
@property (nonatomic) UIButton *attention;//关注
@property (nonatomic) UIButton *fans;//粉丝
@property (nonatomic) UIView *lineView;
@end
