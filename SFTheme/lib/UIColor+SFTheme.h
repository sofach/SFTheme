//
//  UIColor+SFTheme.h
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>

//color
#define SFColorNaviBar @"naviBarColor"
#define SFColorNaviBarTitle @"naviBarTitleColor"
#define SFColorNaviBarItemTitle @"naviBarItemTitleColor"

#define SFColorTabBar @"tabBarColor"
#define SFColorTabBarItemTitleNormal @"tabBarItemTitleNormalColor"
#define SFColorTabBarItemTitleSelected @"tabBarItemTitleSelectedColor"

#define SFColorViewBackground @"viewBackgroundColor"
#define SFColorViewContent @"viewContentColor"

#define SFColorLine @"lineColor"
#define SFColorBorder @"borderColor"

#define SFColorMajor @"majorColor"
#define SFColorMinor @"minorColor"

#define SFColorTitle1 @"titleColor1"
#define SFColorTitle2 @"titleColor2"
#define SFColorContent1 @"contentColor1"
#define SFColorContent2 @"contentColor2"
#define SFColorContent3 @"contentColor3"

/**
 *  推荐使用这些方法来获取颜色，以便更换主题
 */
@interface UIColor (SFTheme)

/**
 *  根据plist中定义的颜色key获取颜色
 *
 *  @param name plist中定义的key
 *
 *  @return 颜色
 */
+ (UIColor *)colorForName:(NSString *)name;

+ (UIColor *)colorForNaviBar;
+ (UIColor *)colorForNaviBarTitle;
+ (UIColor *)colorForNaviBarItemTitle;

+ (UIColor *)colorForTabBar;
+ (UIColor *)colorForTabBarItemTitleNormal;
+ (UIColor *)colorForTabBarItemTitleSelected;

+ (UIColor *)colorForViewContent;
+ (UIColor *)colorForViewBackgroud;

+ (UIColor *)colorForLine;
+ (UIColor *)colorForBorder;

+ (UIColor *)colorForMajor;
+ (UIColor *)colorForMinor;

+ (UIColor *)colorForTitle1;
+ (UIColor *)colorForTitle2;
+ (UIColor *)colorForContent1;
+ (UIColor *)colorForContent2;
+ (UIColor *)colorForContent3;

@end
