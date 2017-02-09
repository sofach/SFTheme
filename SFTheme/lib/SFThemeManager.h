//
//  SFThemeManager.h
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFTheme.h"
#import "UIColor+SFTheme.h"
#import "UIFont+SFTheme.h"
#import "NSNumber+SFTheme.h"

#define SFNotificationThemeChanged @"SFNotificationThemeChanged"

/**
 *  主题管理类，支持切换主题
 */
@interface SFThemeManager : NSObject

@property (assign, nonatomic) CGFloat fontOffset;

@property (strong, nonatomic, readonly) SFTheme *theme;

+ (instancetype)sharedInstence;

/**
 *  切换主题，当调用时，会发送SFNotificationThemeChanged的通知，接收这些通知来处理主题切换
 *
 *  @param themeName 主题名，bundle（去除后缀），或者沙盒中的根文件夹名
 *  @param themeType 主题类型，bundle：直接添加到项目中的主题，比如默认主题
 sandbox：下载到沙盒中的主题
 */
- (void)applyTheme:(SFTheme *)theme;

@end
