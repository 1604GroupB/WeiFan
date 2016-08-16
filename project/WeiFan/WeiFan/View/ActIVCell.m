//
//  ActIVCell.m
//  WeiFan
//
//  Created by tarena002 on 16/7/27.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ActIVCell.h"

@implementation ActIVCell

- (NSMutableArray<UIImageView*> *)iconIVs {
    if(_iconIVs == nil) {
        _iconIVs = [[NSMutableArray<UIImageView*> alloc] init];
        
    }
    return _iconIVs;
}

- (NSMutableArray <UILabel*> *)nameLb {
    if(_nameLb == nil) {
        _nameLb = [[NSMutableArray <UILabel*> alloc] init];
    }
    return _nameLb;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
