//
//  HomePageController.h
//  WeiFan
//
//  Created by tarena002 on 16/7/19.
//  Copyright © 2016年 tarena. All rights reserved.
//

/**
 *  首页界面。是一个WMPageController，有三个title 
    NavigationItem的BarButton左右各一个自定义按钮
 */

#import <WMPageController/WMPageController.h>

@interface HomePageController : WMPageController
-(instancetype)initWithCustom;
@end
