//
//  UIFont+SFTheme.h
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>

//以下几个必须得在theme.plist中定义
//字体大小
#define SFFontNaviBarTitle @"naviBarTitleFont"
#define SFFontNaviBarItemTitle @"naviBarItemTitleFont"
#define SFFontTabBarItemTitle @"tabBarItemTitleFont"
#define SFFontText1 @"textFont1"
#define SFFontText2 @"textFont2"
#define SFFontText3 @"textFont3"

/**
 *  推荐使用该category中的方法来获字体大小，这样可以方便的更换主题
 */
@interface UIFont (SFTheme)

+ (UIFont *)fontForName:(NSString *)name;

+ (UIFont *)fontForNaviBarTitle;
+ (UIFont *)fontForNaviBarItemTitle;
+ (UIFont *)fontForTabBarItemTitle;
+ (UIFont *)fontForText1;
+ (UIFont *)fontForText2;
+ (UIFont *)fontForText3;

@end
