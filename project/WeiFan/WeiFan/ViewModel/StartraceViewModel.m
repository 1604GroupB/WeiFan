//
//  StartraceViewModel.m
//  WeiFan
//
//  Created by tarena50 on 16/7/22.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "StartraceViewModel.h"

@implementation StartraceViewModel

- (NSMutableArray <RecommendationDatastrModel*> *)datastr {
    if(_datastr == nil) {
        _datastr = [[NSMutableArray <RecommendationDatastrModel*> alloc] init];
    }
    return _datastr;
}

-(NSInteger)section{
  
    return 4;
}


    



-(void)getDataWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    self.dataTask = [NetManger getToDaycompletionHandler:^(RecommendationModel *model, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.datastr removeAllObjects];
            }
            [self.datastr addObjectsFromArray:model.datastr];
            
        }
        !completionHandler ?: completionHandler(error);

    }];
    }



-(void)getModelWorkersWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    self.dataTask = [NetManger getModelWorkerscompletionHandler:^(RecommendationModel *model, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.datastr removeAllObjects];
            }
            [self.datastr addObjectsFromArray:model.datastr];
        }
        !completionHandler ?: completionHandler(error);
    }];
}



-(void)getReviewWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    self.dataTask = [NetManger getReviewcompletionHandler:^(RecommendationModel *model, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.datastr removeAllObjects];
            }
            [_datastr addObjectsFromArray:model.datastr];
        }
        !completionHandler ?: completionHandler(error);
    }];
}




-(void)getTagsWithMode:(RequestMode)requestMode completionHandler:(void (^)(NSError *))completionHandler{
    self.dataTask = [NetManger getTagscompletionHandler:^(RecommendationModel *model, NSError *error) {
        if (!error) {
            if (requestMode == RequestModeRefresh) {
                [self.datastr removeAllObjects];
            }
            [_datastr addObjectsFromArray:model.datastr];
        }
        !completionHandler ?: completionHandler(error);
    }];
}





//今日推荐大图
-(NSURL *)headImgForRow:(NSInteger)row{
    return self.datastr[row].headImg.yx_URL;
}

-(NSString *)titleForRow:(NSInteger)row{
    return self.datastr[row].title;
}

-(NSString *)viceTitleForRow:(NSInteger)row{
    return self.datastr[row].viceTitle;
}

-(NSString*)collectCountForRow:(NSInteger)row{
   NSInteger collec = self.datastr[row].collectCount;
    return [NSString stringWithFormat:@"%ld",collec];
}

//劳模图片
-(NSURL *)headImgMWindex:(NSInteger)index{
    return self.datastr[index].headImg.yx_URL;
}
//劳模明星  名字
-(NSString*)starNameindex:(NSInteger)index {
    return self.datastr[index].starName;
}
//劳模明星 行程数
-(NSString*)trailCountindex:(NSInteger)index{
  NSString * trail = self.datastr[index].trailCount;

    return [NSString stringWithFormat:@"行程数 %@",trail];
}

//往期回顾  图片
-(NSURL *)imageForRow:(NSInteger)row{
    return self.datastr[row].image.yx_URL;
}

//热门星踪
//参加明星数
-(NSString*)starIdsForRow:(NSInteger)row{
    return self.datastr[row].starIds;

}
//时间
-(NSString *)holdTimeForRow:(NSInteger)row{
    return self.datastr[row].holdTime;

}
//城市
-(NSString *)cityForRow:(NSInteger)row{
    return self.datastr[row].city;

}

//图片
-(NSURL*)imgstarForRow:(NSInteger)row{
    return self.datastr[row].img.yx_URL;
}


@end
