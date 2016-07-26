//
//  HeaderViewCell.m
//  WeiFan
//
//  Created by tarena0026 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "HeaderViewCell.h"

@implementation HeaderViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self fans];
        [self lineView];
        [self signIn];
        [self attention];
        
        
        self.separatorInset = UIEdgeInsetsZero;
        self.layoutMargins = UIEdgeInsetsZero;
        self.preservesSuperviewLayoutMargins = NO;
    }
    return self;
}

-(UIButton *)attention{
    if (!_attention) {
        _attention = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_attention];
        
        [_attention setTitle:@"关注  0" forState:UIControlStateNormal];
        
//        _attention.titleLabel.text = @"关注";
        _attention.showsTouchWhenHighlighted = YES;
        [_attention setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//        _attention.titleLabel.textColor = [UIColor lightGrayColor];
//        _attention.tintColor = [UIColor lightGrayColor];
        [_attention mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.equalTo(0);
            make.top.equalTo(self.userHeadPortrait.mas_bottom);
            make.height.equalTo(30);
        }];
        [_attention addTarget:self action:@selector(attentionClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _attention;
}
-(UIView *)lineView{
    if (!_lineView) {
        _lineView = [UIView new];
        [self.contentView addSubview:_lineView];
        _lineView.backgroundColor = [UIColor lightGrayColor];
        [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.centerY.equalTo(self.attention);
            make.left.equalTo(self.attention.mas_right);
            make.size.equalTo(CGSizeMake(2, 20));
        }];
    }
    return _lineView;
}
-(UIButton *)fans{
    if (!_fans) {
        _fans = [UIButton buttonWithType:UIButtonTypeCustom];
        [_fans setTitle:@"粉丝  0" forState:UIControlStateNormal];
//        _fans.titleLabel.textColor = [UIColor lightGrayColor];
        [_fans setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//        _fans.tintColor = [UIColor lightGrayColor];
        [self.contentView addSubview:_fans];
        [_fans mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.lineView.mas_right);
            make.top.equalTo(self.attention);
            make.bottom.right.equalTo(0);
        }];
        [_fans addTarget:self action:@selector(fansClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _fans;
}
-(UIImageView *)userHeadPortrait{
    if (!_userHeadPortrait) {
        _userHeadPortrait = [UIImageView new];
        [self.contentView addSubview:_userHeadPortrait];
        [_userHeadPortrait mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.equalTo(0);
        }];
        _userHeadPortrait.userInteractionEnabled = YES;
    }
    return _userHeadPortrait;
}
-(UIVisualEffectView *)visualEffectView{
    if (!_visualEffectView) {
        _visualEffectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
        [self.userHeadPortrait addSubview:_visualEffectView];
        [_visualEffectView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
        }];
    }
    return _visualEffectView;
}
-(UIButton *)user{
    if (!_user) {
        _user = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.userHeadPortrait addSubview:_user];
        [_user mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(10);
            make.centerX.equalTo(0);
            make.size.equalTo(40);
        }];
        [_user addTarget:self action:@selector(userClick:) forControlEvents:UIControlEventTouchUpInside];
//        _user.backgroundColor = [UIColor redColor];
        [_user setBackgroundImage:[UIImage imageNamed:@"icon_news_comic"] forState:UIControlStateNormal];
//        _user.imageView.image = [UIImage imageNamed:@"7"];
        _user.backgroundColor = [UIColor grayColor];
        _user.userInteractionEnabled = YES;
        _user.layer.masksToBounds = YES;
        _user.layer.cornerRadius = 40/2;
    }
    return _user;
}
-(UILabel *)userName{
    if (!_userName) {
        _userName = [UILabel new];
        _userName.textColor = [UIColor yellowColor];
        [self.userHeadPortrait addSubview:_userName];
        [_userName mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.top.equalTo(self.user.mas_bottom).equalTo(5);
        }];
    }
    return _userName;
}
-(UILabel *)integral{
    if (!_integral) {
        _integral = [UILabel new];
        _integral.textColor = [UIColor whiteColor];
        _integral.font = [UIFont systemFontOfSize:12];
        [self.userHeadPortrait addSubview:_integral];
        [_integral mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.top.equalTo(self.userName.mas_bottom).equalTo(5);
        }];
    }
    return _integral;
}
-(UIButton *)signIn{
    if (!_signIn) {
        _signIn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_signIn setTitle:@"签到+5积分" forState:UIControlStateNormal];
//        [_signIn setTitle:@"已签到" forState:UIControlStateHighlighted];
        _signIn.font = [UIFont systemFontOfSize:13];
        _signIn.showsTouchWhenHighlighted = YES;
//        _signIn.adjustsImageWhenDisabled = YES;
        _signIn.backgroundColor = [UIColor yellowColor];
        _signIn.tintColor = [UIColor blackColor];
//        _signIn.userInteractionEnabled = YES;
        [self.userHeadPortrait addSubview:_signIn];
        [_signIn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.integral.mas_bottom).equalTo(5);
            make.centerX.equalTo(0);
            make.width.equalTo(75);
            make.bottom.equalTo(-15);
        }];
        [_signIn addTarget:self action:@selector(signInClick:) forControlEvents:UIControlEventTouchUpInside];
//        _signIn.backgroundColor = [UIColor redColor];
    }
    return _signIn;
}

-(void)attentionClick:(UIButton *)sender{
    
}
-(void)fansClick:(UIButton *)sender{
    
}
-(void)userClick:(UIButton *)sender{
    
}
-(void)signInClick:(UIButton *)sender{
    [sender setTitle:@"已签到" forState:UIControlStateNormal];
    sender.userInteractionEnabled = NO;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
