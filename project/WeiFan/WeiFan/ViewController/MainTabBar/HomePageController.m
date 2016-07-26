//
//  HomePageController.m
//  WeiFan
//
//  Created by tarena002 on 16/7/19.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "HomePageController.h"
#import "ViewController.h"
#import "UserMy.h"
#import "startraceViewController.h"
@interface HomePageController ()

@end

@implementation HomePageController

- (instancetype)initWithCustom
{
    if (self = [super init])
    {
        self.showOnNavigationBar = YES;
        self.menuBGColor = [UIColor clearColor];
        self.menuViewStyle = WMMenuViewStyleLine;
        self.menuItemWidth = 40;
        self.progressColor = [UIColor orangeColor];
        self.titleColorSelected = [UIColor orangeColor];
        self.menuHeight = 44;
    }
    return self;
}


- (NSArray<NSString *> *)titles
{
    return @[@"星闻",@"星踪",@"活动"];
}

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController
{
    return 3;
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index
{
    switch (index) {
        case 0:
        {
            
        }
            break;
        case 1:
        {
            startraceViewController *vc = [startraceViewController new];
            return vc;
        }
            break;
        case 2:
        {
            ViewController *vc = [[ViewController alloc]init];
            return vc;
        }
            break;
    }
    return [UIViewController new];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    self.navigationController.navigationBar.tintColor = [UIColor orangeColor];
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"nav_icon_my"] style:UIBarButtonItemStylePlain target:self action:@selector(leftBtnAction:)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"nav_icon_broke"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBtnAction:)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}

-(void)leftBtnAction:sender
{
    UserMy *user = [UserMy new];
    [self.navigationController pushViewController:user animated:YES];
}

- (void)rightBtnAction:sender
{
    
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
