//
//  TodayCell.m
//  WeiFan
//
//  Created by tarena50 on 16/7/25.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "TodayCell.h"

@implementation TodayCell
- (UIImageView *)iconIV {
    if(_iconIV == nil) {
        _iconIV = [[UIImageView alloc] init];
        _iconIV.contentMode = UIViewContentModeScaleAspectFill;
        _iconIV.clipsToBounds = YES;
        [self.contentView addSubview:_iconIV];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.equalTo(10);
            make.bottom.equalTo(-10);
            make.size.equalTo(CGSizeMake(80, 60));
        }];
        
    }
    return _iconIV;
}

- (UILabel *)titleLB {
    if(_titleLB == nil) {
        _titleLB = [[UILabel alloc] init];
        _titleLB.font = [UIFont systemFontOfSize:18];
        [self.contentView addSubview:_titleLB];
        [_titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.iconIV.mas_right).equalTo(10);
            make.right.equalTo(-80);
            make.top.equalTo(self.iconIV);
        }];
    }
    return _titleLB;
}

- (UILabel *)viceTitleLB {
    if(_viceTitleLB == nil) {
        _viceTitleLB = [[UILabel alloc] init];
        _viceTitleLB.font= [UIFont systemFontOfSize:14];
        _viceTitleLB.numberOfLines=0;
        _viceTitleLB.textColor = [UIColor grayColor];
        [self.contentView addSubview:_viceTitleLB];
        [_viceTitleLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(self.titleLB);
            make.centerX.equalTo(self.titleLB);
            make.top.equalTo(self.titleLB.mas_bottom).equalTo(10);
            make.bottom.equalTo(-10);
            make.height.lessThanOrEqualTo(35);
        }];
    }
    return _viceTitleLB;
}

- (UILabel *)collectCountLB {
    if(_collectCountLB == nil) {
        _collectCountLB = [[UILabel alloc] init];
        _collectCountLB.font=[UIFont systemFontOfSize:17];
        _collectCountLB.textColor = [UIColor orangeColor];
        [self.contentView addSubview:_collectCountLB];
        [_collectCountLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(0);
            make.right.equalTo(-8);
            make.width.equalTo(60);
        }];
    }
    return _collectCountLB;
}

@end
