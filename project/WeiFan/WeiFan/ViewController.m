//
//  ViewController.m
//  WeiFan
//
//  Created by tarena002 on 16/7/19.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"
#import "ActivityCell.h"
@interface ViewController ()
@property (nonatomic) ActivityViewModel *activityVM;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.tableView.sectionHeaderHeight = 5;
    self.tableView.sectionFooterHeight = 0;
    
    __weak typeof(self) weakSelf = self;
    [self.tableView addHeaderRefresh:^{
        [weakSelf.activityVM getDataWithMode:RequestModeRefresh completionHandler:^(NSError *error) {
            [weakSelf.tableView reloadData];
            [weakSelf.tableView endHeaderRefresh];
        }];
    }];
    [self.tableView beginHeaderRefresh];
    
    [self.tableView addFooterRefresh:^{
        [weakSelf.activityVM getDataWithMode:RequestModeMore completionHandler:^(NSError *error) {
            [weakSelf.tableView reloadData];
            [weakSelf.tableView endFooterRefresh];
        }];
    }];
    
    
    //注册cell
    [self.tableView registerClass:[ActivityCell class] forCellReuseIdentifier:@"Cell"];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.activityVM numOfSection];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ActivityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [cell.iconIV setImageURL:[self.activityVM iconURL:indexPath.section]];
    cell.TitleLb.text = [self.activityVM titleForRow:indexPath.section];
    cell.DateLb.text = [self.activityVM dateForRow:indexPath.section];
    cell.wantCountLb.text = [self.activityVM wantToCount:indexPath.section];
    cell.address.text = [self.activityVM adressForRow:indexPath.section];
    cell.activityIcon.image = [self.activityVM activityIconForRow:indexPath.section];
    cell.isEndIV.image = [self.activityVM isEndIconForRow:indexPath.section];
    cell.tagIcon.image = [self.activityVM isFeeIconForRow:indexPath.section];
    cell.rmbLb.text = [self.activityVM rmbForRow:indexPath.section];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 300;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 5;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (ActivityViewModel *)activityVM {
	if(_activityVM == nil) {
		_activityVM = [[ActivityViewModel alloc] init];
	}
	return _activityVM;
}

@end
