//
//  RequestPath.h
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#ifndef RequestPath_h
#define RequestPath_h
//基础请求地址
#define kRequestBasePath @"http://mx.wefans.com/wefans-war-2.0.0/"

//活动页面请求地址
#define kActivityDatePath @"QueryActList/index.do?pageSize=10&startRow=%ld"
//活动详情页请求
#define kActivityDetailDatePath @"QueryActDetail/index.do?actId=%@"

#define kActivityDetailPath @"http://mx.wefans.com/appshare/actDetail.html?actId=%@"

#endif /* RequestPath_h */
