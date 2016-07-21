//
//  CustomTabBar.m
//  WeiFan
//
//  Created by tarena002 on 16/7/20.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "CustomTabBar.h"

@implementation CustomTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //添加按钮
        UIButton *searchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:searchBtn];
        [searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.top.bottom.equalTo(0);
            make.width.equalTo(70);
        }];
        
        //设置图片
        [searchBtn setImage:[UIImage imageNamed:@"tabbar_icon_search_selected"] forState:UIControlStateNormal];
        searchBtn.contentMode = UIViewContentModeScaleAspectFill;
        searchBtn.clipsToBounds = YES;
        
        
        
        //在此可添加搜索按钮的响应时间
//        [searchBtn addTarget:self action:@selector(searchAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

@end
