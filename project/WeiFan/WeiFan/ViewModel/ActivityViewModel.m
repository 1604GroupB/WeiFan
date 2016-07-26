//
//  ActivityViewModel.m
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ActivityViewModel.h"

@implementation ActivityViewModel

- (void)getDataWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler
{
    NSInteger tmpStartRow = 0;
    if (requestMode == RequestModeMore)
    {
        tmpStartRow = _startRow + 10;
    }
    self.dataTask = [NetManger getActivityViewDataWith:tmpStartRow completionHandler:^(ActivityModel *model, NSError *error) {
        if (!error)
        {
            if (requestMode == RequestModeRefresh)
            {
                [_dataList removeAllObjects];
            }
            [_dataList addObjectsFromArray:model.datastr];
            _startRow = tmpStartRow;
        }
        !completionHandler ?: completionHandler(error);
    }];
}

- (NSInteger)numOfSection
{
    return self.dataList.count;
}

- (NSString *)titleForRow:(NSInteger)row
{
    return self.dataList[row].title;
}

- (NSURL *)iconURL:(NSInteger)row
{
    return self.dataList[row].imgCover.yx_URL;
}

- (NSString *)dateForRow:(NSInteger)row
{
    return  self.dataList[row].actBeginTime;
}

- (NSString *)wantToCount:(NSInteger)row
{
    return [NSString stringWithFormat:@"%ld人想参加",self.dataList[row].collectCount];
}

- (NSString *)adressForRow:(NSInteger)row
{
    NSString *province = self.dataList[row].province;
    NSString *city = self.dataList[row].city;
    if (![province isEqualToString:@""])
    {
        if ([province isEqualToString:city])
        {
            return province;
        }
        else
        {
            return [NSString stringWithFormat:@"%@   %@",province,city];
        }
    }
    return @"线上活动";
}

- (UIImage *)activityIconForRow:(NSInteger)row
{
    if ([self isOnlineActivity:row])
    {
        return [UIImage imageNamed:@"icon_eventlist_online"];
    }
    return [UIImage imageNamed:@"icon_city_location"];
}

- (BOOL)isOnlineActivity:(NSInteger)row
{
    if ([[self adressForRow:row] isEqualToString:@"线上活动"])
    {
        return YES;
    }
    return NO;
}

- (UIImage *)isEndIconForRow:(NSInteger)row
{
    if (self.dataList[row].isEnd == 1)
    {
        return [UIImage imageNamed:@"isEnd"];
    }
    return [UIImage new];
}

- (UIImage *)isFeeIconForRow:(NSInteger)row
{
    
    if (self.dataList[row].isFee == 1)
    {
        _isFee = NO;
        return [UIImage imageNamed:@"icon_activity_price"];
        
    }
    _isFee = YES;
    return [UIImage imageNamed:@"icon_activity_free"];
}

- (NSString *)rmbForRow:(NSInteger)row
{
    if (_isFee == 0)
    {
        return self.dataList[row].rmb;
    }
    return @"";
}

- (NSMutableArray <ActivityDatastrModel*> *)dataList {
    if(_dataList == nil) {
        _dataList = [NSMutableArray new];
    }
    return _dataList;
}
@end
