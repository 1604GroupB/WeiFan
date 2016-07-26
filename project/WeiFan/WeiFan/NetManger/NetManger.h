//
//  NetManger.h
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BaseNetworking.h"
#import "ActivityModel.h"
#import "RecommendationModel.h"

@interface NetManger : BaseNetworking
+(id)getActivityViewDataWith:(NSInteger)startRow completionHandler:(void(^)(ActivityModel *model,NSError *error))completionHandler;

//星踪
+getToDaycompletionHandler:(void(^)(RecommendationModel *model , NSError *error))completionHandler;

+getModelWorkerscompletionHandler:(void(^)(RecommendationModel *model , NSError *error))completionHandler;

+getReviewcompletionHandler:(void(^)(RecommendationModel *model , NSError *error))completionHandler;

+getTagscompletionHandler:(void(^)(RecommendationModel *model , NSError *error))completionHandler;



@end
