//
//  NetManger.h
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BaseNetworking.h"
#import "ActivityModel.h"
#import "ActivityDetailModel.h"
#import "RecommendationModel.h"

@interface NetManger : BaseNetworking
//活动页
+(id)getActivityViewDataWith:(NSInteger)startRow completionHandler:(void(^)(ActivityModel *model,NSError *error))completionHandler;
//活动详情页
+(id)getActivityDetailViewDataWith:(NSString*)actId completionHandler:(void (^)(ActivityDetailModel *, NSError *))completionHandler;

//星踪
+getToDaycompletionHandler:(void(^)(RecommendationModel *model , NSError *error))completionHandler;

+getModelWorkerscompletionHandler:(void(^)(RecommendationModel *model , NSError *error))completionHandler;

+getReviewcompletionHandler:(void(^)(RecommendationModel *model , NSError *error))completionHandler;

+getTagscompletionHandler:(void(^)(RecommendationModel *model , NSError *error))completionHandler;



@end
