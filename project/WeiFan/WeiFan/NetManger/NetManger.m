//
//  NetManger.m
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "NetManger.h"

@implementation NetManger
+ (id)getActivityViewDataWith:(NSInteger)startRow completionHandler:(void (^)(ActivityModel *, NSError *))completionHandler
{
    NSString *path = [NSString stringWithFormat:kActivityDatePath,startRow];
    return [self GET:path parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        !completionHandler ?: completionHandler([ActivityModel parse:repsonseObj],error);
    }];
}

#pragma xiongzong
//今日推荐
+(id)getToDaycompletionHandler:(void (^)(RecommendationModel *, NSError *))completionHandler{
    return [self GET:kPathToDay parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        NSLog(@"%@",repsonseObj);
        !completionHandler ?:completionHandler([RecommendationModel parse:repsonseObj],error);
    }];
    
}
//劳模明星
+(id)getModelWorkerscompletionHandler:(void (^)(RecommendationModel *, NSError *))completionHandler{
    return [self GET:kPathModelWorkers parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        !completionHandler ?:completionHandler([RecommendationModel parse:repsonseObj],error);
    }];
}
//往期回顾
+(id)getReviewcompletionHandler:(void (^)(RecommendationModel *, NSError *))completionHandler{
    return [self GET:kPathReview parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        !completionHandler ?:completionHandler([RecommendationModel parse:repsonseObj],error);
    }];
}
//热门星踪
+(id)getTagscompletionHandler:(void (^)(RecommendationModel *, NSError *))completionHandler{
    return [self GET:kPathTags parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        !completionHandler ?:completionHandler([RecommendationModel parse:repsonseObj],error);
    }];
}



@end
