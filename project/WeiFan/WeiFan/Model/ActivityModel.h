//
//  ActivityModel.h
//  WeiFan
//
//  Created by tarena002 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ActivityDatastrModel;
@interface ActivityModel : NSObject

@property (nonatomic, copy) NSString *message;

@property (nonatomic, strong) NSArray<ActivityDatastrModel *> *datastr;

@property (nonatomic, copy) NSString *errorcode;

@end
@interface ActivityDatastrModel : NSObject

@property (nonatomic, copy) NSString *actBeginTime;

@property (nonatomic, assign) NSInteger isFee;

@property (nonatomic, copy) NSString *actInfoType;

@property (nonatomic, assign) NSInteger actInfoId;

@property (nonatomic, copy) NSString *imgCover;

@property (nonatomic, copy) NSString *province;

@property (nonatomic, copy) NSString *isCollect;

@property (nonatomic, assign) NSInteger isEnd;

@property (nonatomic, assign) NSInteger collectCount;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *city;

@property (nonatomic, copy) NSString *rmb;

@end

