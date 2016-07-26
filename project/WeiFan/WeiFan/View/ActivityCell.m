//
//  ActivityCell.m
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ActivityCell.h"

@implementation ActivityCell

- (UILabel *)rmbLb {
    if(_rmbLb == nil) {
        _rmbLb = [[UILabel alloc] init];
        _rmbLb.font = [UIFont systemFontOfSize:15];
        _rmbLb.textColor = [UIColor whiteColor];
        [self.tagIcon addSubview:_rmbLb];
        [_rmbLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(0);
            make.centerX.equalTo(3);
        }];
    }
    return _rmbLb;
}

- (UIImageView *)tagIcon {
    if(_tagIcon == nil) {
        _tagIcon = [[UIImageView alloc] init];
        _tagIcon.contentMode = UIViewContentModeScaleAspectFill;
        //_tagIcon.image = [UIImage imageNamed:@"icon_activity_free"];
        [self.iconIV addSubview:_tagIcon];
        [_tagIcon mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(15);
            make.top.equalTo(25);
            make.width.equalTo(self.iconIV.mas_width).multipliedBy(0.2);
            make.height.equalTo(self.iconIV.mas_height).multipliedBy(0.08);
        }];
    }
    return _tagIcon;
}

- (UIView *)maskView {
    if(_maskView == nil) {
        _maskView = [[UIView alloc] init];
        _maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
        [self.iconIV addSubview:_maskView];
        [_maskView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.left.bottom.equalTo(0);
            make.height.equalTo(self.iconIV.mas_height).multipliedBy(0.33);
        }];
    }
    return _maskView;
}

- (UIImageView *)activityIcon {
    if(_activityIcon == nil) {
        _activityIcon = [[UIImageView alloc] init];
        _activityIcon.contentMode = UIViewContentModeScaleAspectFill;
//        _activityIcon.clipsToBounds = YES;
        [self.maskView addSubview:_activityIcon];
        [_activityIcon mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.dateIcon.mas_bottom).equalTo(10);
            make.centerX.equalTo(self.dateIcon);
            make.size.equalTo(self.dateIcon);
        }];
    }
    return _activityIcon;
}

- (UIImageView *)dateIcon {
    if(_dateIcon == nil) {
        _dateIcon = [[UIImageView alloc] init];
        _dateIcon.contentMode = UIViewContentModeScaleAspectFill;
        _dateIcon.clipsToBounds = YES;
        _dateIcon.image = [UIImage imageNamed:@"icon_schedule_date"];
        [self.maskView addSubview:_dateIcon];
        [_dateIcon mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.TitleLb.mas_bottom).equalTo(6);
            make.left.equalTo(15);
            make.width.equalTo(self.maskView.mas_height).multipliedBy(0.2);
            make.height.equalTo(_dateIcon.mas_width);
        }];
    }
    return _dateIcon;
}

- (UIImageView *)heartIcon {
    if(_heartIcon == nil) {
        _heartIcon = [[UIImageView alloc] init];
        _heartIcon.contentMode = UIViewContentModeScaleAspectFill;
        _heartIcon.image = [UIImage imageNamed:@"icon_activity_list_liked"];
        [self.maskView addSubview:_heartIcon];
        [_heartIcon mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(self.maskView.mas_height).multipliedBy(0.25);
            make.centerY.equalTo(self.activityIcon);
            make.centerX.equalTo(80);
            make.width.equalTo(_heartIcon.mas_height);
        }];
    }
    return _heartIcon;
}

- (UILabel *)wantCountLb {
    if(_wantCountLb == nil) {
        _wantCountLb = [[UILabel alloc] init];
        _wantCountLb.font = [UIFont systemFontOfSize:16];
        _wantCountLb.textColor = [UIColor whiteColor];
        [self.maskView addSubview:_wantCountLb];
        [_wantCountLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.heartIcon.mas_right).equalTo(8);
            make.centerY.equalTo(self.heartIcon);
        }];
    }
    return _wantCountLb;
}

- (UILabel *)DateLb {
    if(_DateLb == nil) {
        _DateLb = [[UILabel alloc] init];
        _DateLb.font = [UIFont systemFontOfSize:15];
        _DateLb.textColor = [UIColor whiteColor];
        [self.maskView addSubview:_DateLb];
        [_DateLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.dateIcon);
            make.left.equalTo(self.dateIcon.mas_right).equalTo(8);
        }];
    }
    return _DateLb;
}

- (UILabel *)TitleLb {
    if(_TitleLb == nil) {
        _TitleLb = [[UILabel alloc] init];
        _TitleLb.textColor = [UIColor whiteColor];
        _TitleLb.font = [UIFont systemFontOfSize:22];
        [self.maskView addSubview:_TitleLb];
        [_TitleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(10);
            make.right.equalTo(-10);
            make.top.equalTo(10);
        }];
    }
    return _TitleLb;
}

- (UIImageView *)iconIV {
    if(_iconIV == nil) {
        _iconIV = [[UIImageView alloc] init];
        _iconIV.contentMode = UIViewContentModeScaleAspectFill;
        _iconIV.clipsToBounds = YES;
        [self.contentView addSubview:_iconIV];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(0);
            
        }];
    }
    return _iconIV;
}

- (UIImageView *)isEndIV {
    if(_isEndIV == nil) {
        _isEndIV = [[UIImageView alloc] init];
        _isEndIV.contentMode = UIViewContentModeScaleAspectFill;
        _isEndIV.layer.cornerRadius = 4;
        _isEndIV.layer.masksToBounds = YES;
        _isEndIV.image = [UIImage imageNamed:@"isEnd"];
        [self.maskView addSubview:_isEndIV];
        [_isEndIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.DateLb.mas_right).equalTo(8);
            make.centerY.equalTo(self.dateIcon);
            make.width.equalTo(self.maskView.mas_width).multipliedBy(0.15);
            make.height.equalTo(self.dateIcon);
        }];
    }
    return _isEndIV;
}

- (UILabel *)address {
    if(_address == nil) {
        _address = [[UILabel alloc] init];
        _address.textColor = [UIColor whiteColor];
        [self.maskView addSubview:_address];
        [_address mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.DateLb);
            make.centerY.equalTo(self.activityIcon);
        }];
    }
    return _address;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self maskView];
        [self dateIcon];
        [self activityIcon];
        [self tagIcon];
        [self rmbLb];
        
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.maskView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
