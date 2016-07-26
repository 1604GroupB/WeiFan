//
//  ActivityModel.m
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ActivityModel.h"

@implementation ActivityModel
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass
{
    return @{@"datastr":[ActivityDatastrModel class]};
}
@end

@implementation ActivityDatastrModel

@end


