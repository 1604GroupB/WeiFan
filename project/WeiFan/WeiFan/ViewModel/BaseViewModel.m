//
//  BaseViewModel.m
//  TRProject
//
//  Created by tarena on 16/7/14.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "BaseViewModel.h"

@implementation BaseViewModel
- (void)getDataWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{}
- (void)getModelWorkersWithMode:(RequestMode)requestMode completionHandler:(void(^)(NSError *error))completionHandler{}
- (void)getReviewWithMode:(RequestMode)requestMode completionHandler:(void(^)(NSError *error))completionHandler{}
- (void)getTagsWithMode:(RequestMode)requestMode completionHandler:(void(^)(NSError *error))completionHandler{}



@end
