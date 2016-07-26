//
//  FirstTableViewCell.m
//  Find
//
//  Created by tarena43 on 16/7/22.
//  Copyright © 2016年 tarena43. All rights reserved.
//

#import "FirstTableViewCell.h"
#define MAS_SHORTHAND_GLOBALS
#import "Masonry.h"
@implementation FirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self acrossView];
        [self verticalView];
      [self headerAView];
         [self upALable];
        [self downALable];
        [self headerBView];
        [self upBLable];
        [self downBLable];
        [self headerCView];
        [self upCLable];
        [self downCLable];
        [self headerDView];
        [self upDLable];
        [self downDLable];
        [self buttonList];
    }
    return self;
}
//横向view约束acrossView
- (UIView *)acrossView {
    if(_acrossView == nil) {
        _acrossView = [UIView new];
        _acrossView.backgroundColor = [UIColor grayColor];
        _acrossView.alpha = 0.4;
        [self.contentView addSubview:_acrossView];
        [_acrossView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(0);
            make.left.equalTo(5);
            make.right.equalTo(-5);
            make.height.equalTo(1);
        }];
    }
    return _acrossView;
}
//竖向viw约束verticalView

- (UIView *)verticalView {
    if(_verticalView == nil) {
        _verticalView = [UIView new];
        _verticalView .backgroundColor = [UIColor grayColor];
        _verticalView.alpha = 0.4;
        [self.contentView addSubview:_verticalView];
        [_verticalView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.top.equalTo(5);
            make.bottom.equalTo(-5);
            make.width.equalTo(1);
            
        }];
    
    }
    return _verticalView;
}
//头像约束
- (UIImageView *)headerAView {
    if(_headerAView == nil) {
        _headerAView = [UIImageView new];
        
        _headerAView.contentMode = UIViewContentModeScaleAspectFill;
        _headerAView.clipsToBounds = YES;
      
        [self.contentView addSubview:_headerAView];
       
        [_headerAView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(13);
            make.height.width.equalTo(50);
            
        }];
    }
    return _headerAView;
}
//上lable
- (UILabel *)upALable {
    if(_upALable == nil) {
        _upALable = [UILabel new];
       
        _upALable.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_upALable];
        [_upALable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.headerAView);
            make.left.equalTo(self.headerAView.mas_right).equalTo(5);
        }];
    }
    return _upALable;
}
//下lable
- (UILabel *)downALable {
    if(_downALable == nil) {
        _downALable = [UILabel new];
        //_downLable.text = @"追星族的心声";
        _downALable.font = [UIFont systemFontOfSize:12];
        _downALable.textColor = [UIColor grayColor];
        [self.contentView addSubview:_downALable];
        [_downALable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.headerAView);
            make.left.equalTo(self.headerAView.mas_right).equalTo(5);
        }];
        
    }
    return _downALable;
}

- (UIImageView *)headerBView {
    if(_headerBView == nil) {
        _headerBView = [UIImageView new];
       
        _headerBView.contentMode = UIViewContentModeScaleAspectFill;
        _headerBView.clipsToBounds = YES;
        
        [self.contentView addSubview:_headerBView];
        
        [_headerBView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(15);
            make.left.equalTo(self.verticalView.mas_right).equalTo(13);
            make.centerY.equalTo(self.headerAView);
            make.height.width.equalTo(50);
            
        }];

    }
    return _headerBView;
}

- (UILabel *)upBLable {
    if(_upBLable == nil) {
        _upBLable = [UILabel new];
        _upBLable.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_upBLable];
        [_upBLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.headerBView);
            make.left.equalTo(self.headerBView.mas_right).equalTo(5);
        }];

    }
    return _upBLable;
}

- (UILabel *)downBLable {
    if(_downBLable == nil) {
        _downBLable = [UILabel new];
        _downBLable.font = [UIFont systemFontOfSize:12];
        _downBLable.textColor = [UIColor grayColor];
        
        [self.contentView addSubview:_downBLable];
        [_downBLable mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.bottom.equalTo(self.headerBView);
            make.left.equalTo(self.headerBView.mas_right).equalTo(5);
                    }];

    }
    return _downBLable;
}
- (UIImageView *)headerCView {
    if(_headerCView == nil) {
        _headerCView = [UIImageView new];
        _headerCView.contentMode = UIViewContentModeScaleAspectFill;
        _headerCView.clipsToBounds = YES;
        
        [self.contentView addSubview:_headerCView];
        
        [_headerCView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.acrossView.mas_bottom).equalTo(13);
            make.left.equalTo(15);
            make.height.width.equalTo(50);
            
        }];

    }
    return _headerCView;
}

- (UILabel *)upCLable {
    if(_upCLable == nil) {
        _upCLable = [UILabel new];
        _upCLable.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_upCLable];
        [_upCLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.headerCView);
            make.left.equalTo(self.headerCView.mas_right).equalTo(5);
        }];

    }
    return _upCLable;
}

- (UILabel *)downCLable {
    if(_downCLable == nil) {
        _downCLable = [UILabel new];
        _downCLable.font = [UIFont systemFontOfSize:12];
        _downCLable.textColor = [UIColor grayColor];
        [self.contentView addSubview:_downCLable];
        [_downCLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.headerCView);
            make.left.equalTo(self.headerCView.mas_right).equalTo(5);
        }];

    }
    return _downCLable;
}

- (UIImageView *)headerDView {
    if(_headerDView == nil) {
        _headerDView = [UIImageView new];
        _headerDView.contentMode = UIViewContentModeScaleAspectFill;
        _headerDView.clipsToBounds = YES;
        
        [self.contentView addSubview:_headerDView];
        
        [_headerDView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.equalTo(self.verticalView.mas_right).equalTo(13);
            make.centerY.equalTo(self.headerCView);
            make.height.width.equalTo(50);
            
        }];

    }
    return _headerDView;
}

- (UILabel *)upDLable {
    if(_upDLable == nil) {
        _upDLable = [UILabel new];
        _upDLable.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_upDLable];
        [_upDLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.headerDView);
            make.left.equalTo(self.headerDView.mas_right).equalTo(5);
        }];
    }
    return _upDLable;
}

- (UILabel *)downDLable {
    if(_downDLable == nil) {
        _downDLable = [UILabel new];
        _downDLable.font = [UIFont systemFontOfSize:12];
        _downDLable.textColor = [UIColor grayColor];
        
        [self.contentView addSubview:_downDLable];
        [_downDLable mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.bottom.equalTo(self.headerDView);
            make.left.equalTo(self.headerDView.mas_right).equalTo(5);
        }];
    }
    return _downDLable;
}
//竖向viw约束verticalView
//横向view约束acrossView
- (NSMutableArray<UIButton *> *)buttonList {
    if(_buttonList == nil) {
        _buttonList = [[NSMutableArray<UIButton *> alloc] init];
        for (int i = 0; i < 4; i++) {
            UIButton *btn = [ UIButton buttonWithType:UIButtonTypeSystem];
            btn.backgroundColor = [UIColor clearColor];
            //[btn addTarget:self action:@selector(shuohua:) forControlEvents:UIControlEventTouchUpInside];
            [self.contentView addSubview:btn];
            [btn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(([UIScreen mainScreen].bounds.size.width-2)/2);
                make.height.equalTo(76);
                if (i==0) {
                    btn.tag = 0;
                    make.left.equalTo(0);
                    make.top.equalTo(0);
                }
                if (i==1) {
                    btn.tag = 1;
                    make.top.equalTo(0);
                    make.left.equalTo(self.verticalView.mas_right).equalTo(0);
                }
                if (i==2) {
                    btn.tag = 2;
                    make.top.equalTo(self.acrossView.mas_bottom).equalTo(0);
                    make.left.equalTo(0);
                }
                if (i==3) {
                    btn.tag = 3;
                    make.top.equalTo(self.acrossView.mas_bottom).equalTo(0);
                    make.left.equalTo(self.verticalView.mas_right).equalTo(0);
                }
            }];
            [_buttonList addObject:btn];
        }
    }
    return _buttonList;
}
//- (void)shuohua:(UIButton *)sender{
//    switch (sender.tag) {
//        case 0:
//            NSLog(@"等一个人咖啡0");
//            break;
//        case 1:
//            NSLog(@"等一个人咖啡1");
//            break;
//        case 2:
//            NSLog(@"等一个人咖啡2");
//            break;
//        case 3:
//            NSLog(@"等一个人咖啡3");
//            break;
//        default:
//            break;
//    }
//
//}
//防止点击之后横向竖向view消失
- (void)layoutSubviews
{
    [super layoutSubviews];
     _verticalView .backgroundColor = [UIColor grayColor];
    _acrossView.backgroundColor = [UIColor grayColor];

}

- (void)awakeFromNib {
   
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}

@end
