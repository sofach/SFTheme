//
//  UIColor+SFTheme.h
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>

//color
#define SFColorNaviBarTint @"naviBarTintColor"
#define SFColorNaviBarBarTint @"naviBarBarTintColor"
#define SFColorNaviBarTitle @"naviBarTitleColor"
#define SFColorNaviBarItemTitle @"naviBarItemTitleColor"

#define SFColorTabBarTint @"tabBarTintColor"
#define SFColorTabBarBarTint @"tabBarBarTintColor"
#define SFColorTabBarItemTitleNormal @"tabBarItemTitleNormalColor"
#define SFColorTabBarItemTitleSelected @"tabBarItemTitleSelectedColor"

#define SFColorViewBackground @"viewBackgroundColor"
#define SFColorViewContent @"viewContentColor"

#define SFColorText1 @"textColor1"
#define SFColorText2 @"textColor2"
#define SFColorText3 @"textColor3"

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

+ (UIColor *)colorForNaviBarTint;
+ (UIColor *)colorForNaviBarBarTint;
+ (UIColor *)colorForNaviBarTitle;
+ (UIColor *)colorForNaviBarItemTitle;

+ (UIColor *)colorForTabBarTint;
+ (UIColor *)colorForTabBarBarTint;
+ (UIColor *)colorForTabBarItemTitleNormal;
+ (UIColor *)colorForTabBarItemTitleSelected;

+ (UIColor *)colorForViewContent;
+ (UIColor *)colorForViewBackgroud;

+ (UIColor *)colorForText1;
+ (UIColor *)colorForText2;
+ (UIColor *)colorForText3;

@end
