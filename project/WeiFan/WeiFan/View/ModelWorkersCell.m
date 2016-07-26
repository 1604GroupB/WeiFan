//
//  ModelWorkersCell.m
//  WeiFan
//
//  Created by tarena50 on 16/7/25.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ModelWorkersCell.h"

@implementation ModelWorkersCell
- (NSMutableArray<UIImageView*> *)images {
    if(_images == nil) {
        _images = [[NSMutableArray<UIImageView*> alloc] init];
        CGFloat width = ([UIScreen mainScreen].bounds.size.width-40)/3.0;
        UIView *lastView = nil;
        for (int i=0; i<3; i++) {
            UIImageView *iv = [UIImageView new];
            [_images addObject:iv];
            iv.contentMode = UIViewContentModeScaleAspectFill;
            iv.layer.cornerRadius = width/2;
            iv.clipsToBounds = YES;
            [self.contentView addSubview:iv];
            [iv mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(10);
                make.width.equalTo(width);
                make.height.equalTo(iv.mas_width);
                
                if (i==0) {
                    make.left.equalTo(10);
                    
                }
                else{
                    make.left.equalTo(lastView.mas_right).equalTo(10);
                    if (i==2) {
                        make.right.equalTo(-10);
                    }
                }
            }];
            lastView= iv;
        }
    }

    
    return _images;
}

- (NSMutableArray<UILabel*> *)starNameLB {
    if(_starNameLB == nil) {
        _starNameLB = [[NSMutableArray<UILabel*> alloc] init];
        for (int i=0; i<3; i++) {
            UILabel *lb = [UILabel new];
            lb.font=[UIFont systemFontOfSize:18];
            [_starNameLB addObject:lb];
            [self.contentView addSubview:lb];
            
            [lb mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.images[i].mas_bottom).equalTo(5);
                make.centerX.equalTo(self.images[i]);
            }];
            
             }
        
        
    }
    return _starNameLB;
}

- (NSMutableArray<UILabel*> *)trailCountLB {
    if(_trailCountLB == nil) {
        _trailCountLB = [[NSMutableArray<UILabel*> alloc] init];
        for (int i=0; i<3; i++) {
            UILabel *lb = [UILabel new];
            lb.font=[UIFont systemFontOfSize:14];
            lb.textColor = [UIColor grayColor];
            [_trailCountLB addObject:lb];
            
            [self.contentView addSubview:lb];
            
            [lb mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.starNameLB[i].mas_bottom).equalTo(5);
                make.centerX.equalTo(self.starNameLB[i]);
                make.bottom.equalTo(-5);
            }];
            
        }
        
    }
    return _trailCountLB;
}


@end
