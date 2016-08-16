//
//  ActivityDetailWebView.h
//  WeiFan
//
//  Created by tarena002 on 16/7/28.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityDetailWebView : UIViewController
- (instancetype)initWithURL:(NSURL*)URL;
@property (nonatomic,readonly) NSURL *URL;
@end
