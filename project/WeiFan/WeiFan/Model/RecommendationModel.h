//
//  RecommendationModel.h
//  WeiFan
//
//  Created by tarena50 on 16/7/21.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RecommendationDatastrModel;
@interface RecommendationModel : NSObject

@property (nonatomic, copy) NSString *errorcode;

@property (nonatomic, copy) NSString *message;

@property (nonatomic, strong) NSArray<RecommendationDatastrModel *> *datastr;

@property (nonatomic, assign) NSInteger count;

@end


@interface RecommendationDatastrModel : NSObject

@property (nonatomic, copy) NSString *holdTime;

@property (nonatomic, copy) NSString *viceTitle;

@property (nonatomic, copy) NSString *province;

@property (nonatomic, copy) NSString *img;

@property (nonatomic, assign) NSInteger starTrailInfoId;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *address;

@property (nonatomic, assign) NSInteger collectCount;

@property (nonatomic, copy) NSString *city;

@property (nonatomic, copy) NSString *starId;

@property (nonatomic, copy) NSString *starIds;

@property (nonatomic, copy) NSString *collectStatus;

@property (nonatomic, copy) NSString *isRec;

@property (nonatomic, copy) NSString *headImg;

@property (nonatomic, copy) NSString *starInfoId;

@property (nonatomic, copy) NSString *starName;

@property (nonatomic, copy) NSString *attentionedCount;

@property (nonatomic, copy) NSString *trailCount;

@property (nonatomic, copy) NSString *isAttention;

@property (nonatomic, copy) NSString *isJump;

@property (nonatomic, copy) NSString *adUrl;
//id->ids
@property (nonatomic, copy) NSString *ids;

@property (nonatomic, copy) NSString *relevanceUrl;

@property (nonatomic, copy) NSString *image;

@property (nonatomic, copy) NSString *adImageList;

@property (nonatomic, copy) NSString *relevanceId;

@property (nonatomic, copy) NSString *relevanceType;


@end

