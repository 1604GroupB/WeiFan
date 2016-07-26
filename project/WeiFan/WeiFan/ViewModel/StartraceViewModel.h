//
//  StartraceViewModel.h
//  WeiFan
//
//  Created by tarena50 on 16/7/22.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "NetManger.h"



@interface StartraceViewModel : BaseViewModel

@property (nonatomic,readonly)NSInteger section;

@property (nonatomic,readonly)NSInteger RowNumber;



//今日推荐大图
-(NSURL *)headImgForRow:(NSInteger)row;

-(NSString *)titleForRow:(NSInteger)row;

-(NSString *)viceTitleForRow:(NSInteger)row;

-(NSString *)collectCountForRow:(NSInteger)row;

-(NSURL *)headImgMWindex:(NSInteger)index;
//劳模明星  名字
-(NSString *)starNameindex:(NSInteger)index;
//劳模明星 行程数
-(NSString*)trailCountindex:(NSInteger)index;

//往期回顾  图片
-(NSURL *)imageForRow:(NSInteger)row;

//热门星踪
//参加明星数
-(NSString*)starIdsForRow:(NSInteger)row;
//时间
-(NSString *)holdTimeForRow:(NSInteger)row;
//城市
-(NSString *)cityForRow:(NSInteger)row;

//评论数同上

//title同上

//图片
-(NSURL*)imgstarForRow:(NSInteger)row;

@property (nonatomic)NSMutableArray <RecommendationDatastrModel*>* datastr;



@end
