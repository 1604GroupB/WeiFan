//
//  ActivityDetailModel.h
//  WeiFan
//
//  Created by tarena002 on 16/7/27.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ActivityDetailDatastrModel;
@interface ActivityDetailModel : NSObject

@property (nonatomic, copy) NSString *message;

@property (nonatomic, strong) ActivityDetailDatastrModel *datastr;

@property (nonatomic, copy) NSString *errorcode;

@end
@interface ActivityDetailDatastrModel : NSObject

@property (nonatomic, copy) NSString *code;

@property (nonatomic, copy) NSString *actInfoId;

@property (nonatomic, copy) NSString *optionMap;

@property (nonatomic, copy) NSString *latitude;

@property (nonatomic, copy) NSString *shareUrl;

@property (nonatomic, copy) NSString *goodsLimit;

@property (nonatomic, copy) NSString *memo;

@property (nonatomic, copy) NSString *isSelf;

@property (nonatomic, copy) NSString *optionIds;

@property (nonatomic, copy) NSString *optionNames;

@property (nonatomic, copy) NSString *isCollect;

@property (nonatomic, copy) NSString *joinPhone;

@property (nonatomic, copy) NSString *townCode;

@property (nonatomic, copy) NSString *commonAddress;

@property (nonatomic, copy) NSString *partnerUrl;

@property (nonatomic, copy) NSString *joinMemo;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *isEnd;

@property (nonatomic, copy) NSString *serverTime;

@property (nonatomic, copy) NSString *dateTip;

@property (nonatomic, copy) NSString *joinCardId;

@property (nonatomic, copy) NSString *longitude;

@property (nonatomic, copy) NSString *addressImg;

@property (nonatomic, copy) NSString *town;

@property (nonatomic, copy) NSString *headImg;

@property (nonatomic, copy) NSString *flag;

@property (nonatomic, copy) NSString *address;

@property (nonatomic, copy) NSString *partner;

@property (nonatomic, copy) NSString *userId;

@property (nonatomic, copy) NSString *goods;

@property (nonatomic, copy) NSString *starNames;

@property (nonatomic, copy) NSString *goodsStore;

@property (nonatomic, copy) NSString *joinTypeDescribe;

@property (nonatomic, copy) NSString *nickName;

@property (nonatomic, copy) NSString *joinTicketCount;

@property (nonatomic, copy) NSString *distance;

@property (nonatomic, copy) NSString *rmb;

@property (nonatomic, copy) NSString *joinBeginTime;

@property (nonatomic, copy) NSString *actEndTime;

@property (nonatomic, copy) NSString *collectCount;

@property (nonatomic, copy) NSString *joinEndTime;

@property (nonatomic, copy) NSString *imgCover;

@property (nonatomic, copy) NSString *createDate;

@property (nonatomic, copy) NSString *starIds;

@property (nonatomic, copy) NSString *actJoinId;

@property (nonatomic, copy) NSString *salesStatus;

@property (nonatomic, copy) NSString *isFee;

@property (nonatomic, copy) NSString *joinCount;

@property (nonatomic, copy) NSString *actBeginTime;

@property (nonatomic, copy) NSString *point;

@property (nonatomic, copy) NSString *phone;

@property (nonatomic, copy) NSString *city;

@property (nonatomic, copy) NSString *actInfoType;

@property (nonatomic, copy) NSString *commentCount;

@property (nonatomic, copy) NSString *joinStatus;

@property (nonatomic, copy) NSString *joinAddress;

@property (nonatomic, copy) NSString *joinRealName;

@property (nonatomic, copy) NSString *goodsNum;

@end

