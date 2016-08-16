//
//  ActivityDetailModel.m
//  WeiFan
//
//  Created by tarena002 on 16/7/27.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ActivityDetailModel.h"

@implementation ActivityDetailModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"datastr":[ActivityDetailDatastrModel class]};
}
@end

@implementation ActivityDetailDatastrModel


@end


