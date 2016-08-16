//
//  MainTabBarView.m
//  WeiFan
//
//  Created by tarena002 on 16/7/19.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MainTabBarView.h"
#import "HomePageController.h"
#import "FindTableViewController.h"
#import "CustomTabBar.h"
@interface MainTabBarView ()

@end

@implementation MainTabBarView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置全局
    //修改某个控件的某个属性的默认值（全局）appearance
    [UITabBar appearance].translucent = NO;
    [UINavigationBar appearance].translucent = NO;
    
    //使用电脑系统里的数码测色计工具找到对应的颜色
    [UINavigationBar appearance].barTintColor = [UIColor colorWithRed:250/255.0 green:192/255.0 blue:12/255.0 alpha:1.0];
    
    //设置tabbar各控制器title（文字直播、我的等）的颜色
    //tintColor的作用就是会影响所有子视图的高亮颜色
    [UITabBar appearance].tintColor = [UIColor colorWithRed:250/255.0 green:165/255.0 blue:10/255.0 alpha:1.0];
    
    
    
    HomePageController *home = [[HomePageController alloc]initWithCustom];
    FindTableViewController *find = [FindTableViewController new];
    
    
    
    home.tabBarItem.image = [[UIImage imageNamed:@"tabbar_icon_home"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    home.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_icon_home_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    find.tabBarItem.image = [[UIImage imageNamed:@"tabbar_icon_find"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    find.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_icon_find_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    home.title = @"首页";
    find.title = @"发现";
    

    [self addChildViewController:[[UINavigationController alloc]initWithRootViewController:home]];
    [self addChildViewController:[[UINavigationController alloc]initWithRootViewController:find]];
//    [self addChildViewController:[[UINavigationController alloc]initWithRootViewController:[UIViewController new]]];
//    [self addChildViewController:[[UINavigationController alloc]initWithRootViewController:[UIViewController new]]];
    
    
    
    //替换系统的tabbar
    CustomTabBar *tabbar = [[CustomTabBar alloc]initWithFrame:self.tabBar.frame];
    //KVC
    [self setValue:tabbar forKey:@"tabBar"];
    self.tabBar.tintColor = [UIColor orangeColor];
    
   
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
