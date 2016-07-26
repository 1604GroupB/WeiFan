//
//  SearchViewController.m
//  WeiFan
//
//  Created by tarena002 on 16/7/26.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (UITableView *)secondView {
    if(_secondView == nil) {
        _secondView = [[UITableView alloc] init];
    }
    return _secondView;
}

- (UICollectionView *)firstView {
    if(_firstView == nil) {
        UICollectionViewLayout *layout = [UICollectionViewLayout new];
        
        _firstView = [[UICollectionView alloc] init];
        
    }
    return _firstView;
}

- (UITableView *)thirdView {
    if(_thirdView == nil) {
        _thirdView = [[UITableView alloc] init];
    }
    return _thirdView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
