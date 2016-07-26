//
//  UserMy.m
//  WeiFan
//
//  Created by tarena0026 on 16/7/22.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "UserMy.h"
#import "HeaderViewCell.h"

@interface UserMy ()

@end

@implementation UserMy

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的";
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell1"];
    
    
    [self.tableView registerClass:[HeaderViewCell class] forCellReuseIdentifier:@"Cell"];
    UIBarButtonItem *compile = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(btnItemClick:)];
    [compile setTintColor:[UIColor blackColor]];
    self.navigationItem.rightBarButtonItem = compile;
    
//    self.tableView.sectionFooterHeight = 5;
//    self.tableView.sectionHeaderHeight = 5;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return 1;
            break;
        case 2:
            return 3;
            break;
            
        default:
            return 1;
            break;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
            return 180;
            break;
        default:
            return 44;
            break;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        HeaderViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        [cell.userHeadPortrait setImage:[UIImage imageNamed:@"my_head_bg"]];
        cell.userName.text = @"小东";
        cell.integral.text = @"累计积分:0";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    if (indexPath.section == 1) {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell1"];
        cell.imageView.image = [UIImage imageNamed:@"my_message"];
        cell.textLabel.text = @"消息";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }
    if (indexPath.section == 2) {
        switch (indexPath.row) {
            case 0:
            {
                UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell1"];
                cell.imageView.image = [UIImage imageNamed:@"my_icon_trace"];
                cell.textLabel.text = @"星综";
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                return cell;
            }
                break;
            case 1:
            {
                UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell1"];
                cell.imageView.image = [UIImage imageNamed:@"my_icon_activity"];
                cell.textLabel.text = @"活动";
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                return cell;
            }
                
            default:
            {
                UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell1"];
                cell.imageView.image = [UIImage imageNamed:@"my_star"];
                cell.textLabel.text = @"明星";
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                return cell;
            }
                break;
        }
    }
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell1"];
    cell.imageView.image = [UIImage imageNamed:@"my_set"];
        cell.textLabel.text = @"设置";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 0.1;
    }
    return 5;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}

-(void)btnItemClick:(UIBarButtonItem *)sender{
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
