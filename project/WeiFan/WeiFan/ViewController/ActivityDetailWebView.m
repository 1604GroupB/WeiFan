//
//  ActivityDetailWebView.m
//  WeiFan
//
//  Created by tarena002 on 16/7/28.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ActivityDetailWebView.h"

@interface ActivityDetailWebView ()

@end

@implementation ActivityDetailWebView

- (instancetype)initWithURL:(NSURL *)URL
{
    if (self = [super init])
    {
        _URL = URL;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIWebView *web = [[UIWebView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:web];
    
    [web loadRequest:[NSURLRequest requestWithURL:_URL]];
    
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
