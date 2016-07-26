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
