//
//  ActivityViewModel.h
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "ActivityModel.h"
#import "NetManger.h"
@interface ActivityViewModel : BaseViewModel

//看UI
@property (nonatomic) NSInteger numOfSection;
- (NSURL*)iconURL:(NSInteger)row;
- (NSURL*)smallIconURL:(NSInteger)row;
- (NSString*)titleForRow:(NSInteger)row;
- (NSString*)dateForRow:(NSInteger)row;
- (BOOL)isOnlineActivity:(NSInteger)row;//***************是不是线上活动
- (UIImage*)activityIconForRow:(NSInteger)row;
- (NSString*)wantToCount:(NSInteger)row;
- (NSString*)adressForRow:(NSInteger)row;
- (UIImage*)isEndIconForRow:(NSInteger)row;
- (UIImage*)isFeeIconForRow:(NSInteger)row;
@property (nonatomic) BOOL isFee;
- (NSString*)rmbForRow:(NSInteger)row;

//看Model
@property (nonatomic) NSMutableArray <ActivityDatastrModel*> *dataList;
@property (nonatomic) NSInteger startRow;



@end
