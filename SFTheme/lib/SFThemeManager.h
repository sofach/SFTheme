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
 */
- (void)switchToTheme:(SFTheme *)theme;

@end
