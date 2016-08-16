//
//  CustomTabBar.m
//  WeiFan
//
//  Created by tarena002 on 16/7/20.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "CustomTabBar.h"
#import "SearchViewControllerr.h"
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
            make.width.equalTo(40);
        }];
        
        //设置图片
        [searchBtn setImage:[UIImage imageNamed:@"tabbar_icon_search_selected"] forState:UIControlStateNormal];
        //searchBtn.imageView.userInteractionEnabled = YES;
//        searchBtn.contentMode = UIViewContentModeScaleAspectFill;
//        searchBtn.clipsToBounds = YES;
        
        //在此可添加搜索按钮的响应时间
        [searchBtn addTarget:self action:@selector(searchAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)searchAction:sender
{
    SearchViewControllerr *vc = [SearchViewControllerr new];
    //得到项目中的tabbarController
    UIViewController *tbc = [UIApplication sharedApplication].keyWindow.rootViewController;
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:vc];
    [tbc presentViewController:navi animated:YES completion:nil];
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    
    NSLog(@"%@",self.subviews);
    UIView *btnView = self.subviews[1];
    [self bringSubviewToFront:btnView];
    NSLog(@"%@",self.subviews);
    UIView *fView = self.subviews[4];
    UIView *uView = self.subviews[1];
    
    CGRect frame = fView.frame;
    frame.size = CGSizeMake(40, fView.frame.size.height);
    fView.frame = frame;
    uView.frame = frame;
    fView.center = CGPointMake(120, fView.center.y);
    uView.center = CGPointMake(290, uView.center.y);
    
    
    
}

@end
