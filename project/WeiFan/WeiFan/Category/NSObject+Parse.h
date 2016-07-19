//
//  NSObject+Parse.h
//  TRProject
//
//  Created by tarena on 16/7/13.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Parse)<YYModel>

+ (id)parse:(id)JSON;

@end
