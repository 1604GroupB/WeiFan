//
//  startraceViewController.m
//  WeiFan
//
//  Created by tarena50 on 16/7/25.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "startraceViewController.h"
#import "NetManger.h"
#import "StartraceViewModel.h"
#import "TodayCell.h"
#import "ModelWorkersCell.h"

@interface startraceViewController ()
@property (nonatomic)StartraceViewModel *TodayVM;
@property (nonatomic)StartraceViewModel *ModelWorkersVM;


@end

@implementation startraceViewController
- (StartraceViewModel *)TodayVM {
    if(_TodayVM == nil) {
        _TodayVM = [[StartraceViewModel alloc] init];
    }
    return _TodayVM;
}

- (StartraceViewModel *)ModelWorkersVM {
    if(_ModelWorkersVM == nil) {
        _ModelWorkersVM = [[StartraceViewModel alloc] init];
    }
    return _ModelWorkersVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[TodayCell class] forCellReuseIdentifier:@"TodayCell"];
    [self.tableView registerClass:[ModelWorkersCell class] forCellReuseIdentifier:@"ModelWorkersCell"];
    
     __weak typeof (self)weakself = self;
    [self.tableView addHeaderRefresh:^{
        [weakself.TodayVM getDataWithMode:RequestModeRefresh completionHandler:^(NSError *error) {
            [weakself.ModelWorkersVM getModelWorkersWithMode:RequestModeRefresh completionHandler:^(NSError *error) {
                [weakself.tableView reloadData];
                [weakself.tableView endHeaderRefresh];
            }];        }];
        
    }];
    [self.tableView beginHeaderRefresh];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
   
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return self.TodayVM.datastr.count;;
    }
    return self.ModelWorkersVM.datastr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
if (indexPath.section == 0) {
        TodayCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TodayCell" forIndexPath:indexPath];
    
        [cell.iconIV setImageURL:[self.TodayVM headImgForRow:indexPath.row]];
        cell.titleLB.text = [self.TodayVM titleForRow:indexPath.row];
        cell.viceTitleLB.text = [self.TodayVM viceTitleForRow:indexPath.row];
        cell.collectCountLB.text = [self.TodayVM collectCountForRow:indexPath.row];
    
        return cell;
    
}else{
        ModelWorkersCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ModelWorkersCell" forIndexPath:indexPath];
        [cell.images enumerateObjectsUsingBlock:^(UIImageView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj setImageURL:[self.ModelWorkersVM headImgMWindex:idx]];
            
        }];
        
        [cell.starNameLB enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text = [self.ModelWorkersVM starNameindex:idx];
        }];
        
        [cell.trailCountLB enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            obj.text =[self.ModelWorkersVM trailCountindex:idx];
        }];
        
        return cell;
    }

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 20;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
