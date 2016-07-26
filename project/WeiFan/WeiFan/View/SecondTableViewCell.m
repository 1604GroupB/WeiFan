//
//  SecondTableViewCell.m
//  Find
//
//  Created by tarena43 on 16/7/25.
//  Copyright © 2016年 tarena43. All rights reserved.
//

#import "SecondTableViewCell.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"

@implementation SecondTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self leftLab];
        [self leftImg];
        [self rightImg];
    }
    return self;
}
- (UIImageView *)leftImg {
    if(_leftImg == nil) {
        _leftImg = [UIImageView new];
        _leftImg.contentMode = UIViewContentModeScaleAspectFill;
        _leftImg.clipsToBounds = YES;
        
        [self.contentView addSubview:_leftImg];
        
        [_leftImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(13);
            make.centerY.equalTo(self.contentView);
            make.height.width.equalTo(27);
            
        }];

    }
    return _leftImg;
}

- (UILabel *)leftLab {
    if(_leftLab == nil) {
        _leftLab = [UILabel new];
        _leftLab.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_leftLab];
        [_leftLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.leftImg.mas_right).equalTo(10);
            make.centerY.equalTo(self.leftImg);
        }];
    }
    return _leftLab;
}

- (UIImageView *)rightImg {
    if(_rightImg == nil) {
        _rightImg = [UIImageView new];
        _rightImg.clipsToBounds = YES;
        _rightImg.contentMode = UIViewContentModeScaleAspectFill;
        [self.contentView addSubview:_rightImg];
        [_rightImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-8);
            make.top.equalTo(8);
           
            make.height.equalTo(27);
            make.width.equalTo(14);
        }];
    }
    return _rightImg;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
