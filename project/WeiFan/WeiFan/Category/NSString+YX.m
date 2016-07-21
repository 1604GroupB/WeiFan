//
//  NSString+YX.m
//  TRProject
//
//  Created by tarena on 16/7/13.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "NSString+YX.h"

@implementation NSString (YX)
- (NSURL *)yx_URL{
    return [NSURL URLWithString:self];
}
@end
