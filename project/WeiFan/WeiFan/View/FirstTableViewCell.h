//
//  FirstTableViewCell.h
//  Find
//
//  Created by tarena43 on 16/7/22.
//  Copyright © 2016年 tarena43. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstTableViewCell : UITableViewCell
/**
 *  横向View
 */
@property(nonatomic)UIView *acrossView;
/**
 *  竖向View
 */
@property(nonatomic)UIView *verticalView;
/**
 *  头像
 */
@property(nonatomic)UIImageView *headerAView;
/**
 *  上lable
 */
@property(nonatomic)UILabel *upALable;
/**
 *  下lable
 */
@property(nonatomic)UILabel *downALable;

//第一行第二个
/**
 *  头像
 */
@property(nonatomic)UIImageView *headerBView;
/**
 *  上lable
 */
@property(nonatomic)UILabel *upBLable;
/**
 *  下lable
 */
@property(nonatomic)UILabel *downBLable;

//左下
/**
 *  头像
 */
@property(nonatomic)UIImageView *headerCView;
/**
 *  上lable
 */
@property(nonatomic)UILabel *upCLable;
/**
 *  下lable
 */
@property(nonatomic)UILabel *downCLable;
//you下
/**
 *  头像
 */
@property(nonatomic)UIImageView *headerDView;
/**
 *  上lable
 */
@property(nonatomic)UILabel *upDLable;
/**
 *  下lable
 */
@property(nonatomic)UILabel *downDLable;

/**
 *  按键数组
 */
@property(nonatomic)NSMutableArray<UIButton *> *buttonList;


@end
