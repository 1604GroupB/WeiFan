//
//  RecommendationModel.m
//  WeiFan
//
//  Created by tarena50 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "RecommendationModel.h"

@implementation RecommendationModel


+(NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass{
    return @{@"datastr" : [RecommendationDatastrModel class]};
}
@end
@implementation RecommendationDatastrModel
+(NSDictionary<NSString *,id> *)modelCustomPropertyMapper{
    return @{@"ids":@"id"};
}



@end


