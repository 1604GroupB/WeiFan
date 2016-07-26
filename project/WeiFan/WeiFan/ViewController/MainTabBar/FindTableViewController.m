//
//  FindTableViewController.m
//  Find
//
//  Created by tarena43 on 16/7/22.
//  Copyright © 2016年 tarena43. All rights reserved.
//

#import "FindTableViewController.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
@interface FindTableViewController ()
/**
 *  左图片名字数组
 */
@property (nonatomic) NSArray *imageArr;
/**
 *  每个lable的文字
 */

@property (nonatomic) NSArray *lableArr;
@end

@implementation FindTableViewController
//- (NSArray *)imageArrA{
//    if (!_imageArr) {
//        _imageArr = [NSArray new];
//    }
//    return
//}
//- (NSArray *)lableArr{
//    if (!_lableArr) {
//        _lableArr = [NSArray new];
//    }
//    return ;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.tableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.tableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"Cell"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case 0:
            return 1;
            break;
            case 1:
            return 4;
        default:
            return 0;
            break;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        
        cell.headerAView.image = [UIImage imageNamed:@"icon_weifansCartoon"];
        cell.upALable.text = @"喂饭漫画";
        cell.downALable.text = @"追星族的心声";
        cell.headerBView.image = [UIImage imageNamed:@"icon_starGroup"];
        cell.upBLable.text = @"星影团";
        cell.downBLable.text = @"粉丝电影专场";
        cell.headerCView.image = [UIImage imageNamed:@"icon_find_live"];
        cell.upCLable.text = @"星踪直播";
        cell.downCLable.text = @"实时明星现场";
        cell.headerDView.image = [UIImage imageNamed:@"icon_find_around"];
        cell.upDLable.text = @"偶像周边";
        cell.downDLable.text = @"明星周边商城";
        [cell.buttonList enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (obj.tag==0) {
                [obj addTarget:self action:@selector(shuohua) forControlEvents:UIControlEventTouchUpInside];
            }
        }];
        
        
        return cell;
    }
    SecondTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    _imageArr = @[@"icon_myTask",@"icon_allStar",@"icon_directSeeding",@"icon_brokeNews"];
    cell.leftImg.image = [UIImage imageNamed:_imageArr[indexPath.row]];
    _lableArr = @[@"我的任务",@"所有星星",@"明星活动",@"爆料星踪"];
    cell.leftLab.text = _lableArr[indexPath.row];
    cell.rightImg.image = [UIImage imageNamed:@"Icon_StarTrail_Arrow"];
    
    return cell;
}
- (void)shuohua{
    NSLog(@"等一个人咖啡");
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.section) {
        case 0:
            return 154;
            break;
            
        default:
            return 50;
            break;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 1;
}

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
