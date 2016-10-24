//
//  UIFont+SFTheme.h
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>

//目前这几种字体常用
typedef enum {
    SFFontFamilyPingFangSC = 0,
    SFFontFamilyPingFangSCLight,
    SFFontFamilyPingFangSCMedium
}SFFontFamily;

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
+ (UIFont *)fontForName:(NSString *)name fontFamily:(SFFontFamily)fontFamily;
+ (UIFont *)fontForName:(NSString *)name fontFamilyName:(NSString *)fontFamilyName;
+ (UIFont *)fontOfSize:(CGFloat)size fontFamily:(SFFontFamily)fontFamily;
+ (UIFont *)fontOfSize:(CGFloat)size fontFamilyName:(NSString *)fontFamilyName;

+ (UIFont *)fontForNaviBarTitle;
+ (UIFont *)fontForNaviBarTitleWithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForNaviBarItemTitle;
+ (UIFont *)fontForNaviBarItemTitleWithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForTabBarItemTitle;
+ (UIFont *)fontForTabBarItemTitleWithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForText1;
+ (UIFont *)fontForText1WithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForText2;
+ (UIFont *)fontForText2WithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForText3;
+ (UIFont *)fontForText3WithFontFamily:(SFFontFamily)fontFamily;

@end
