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
    SFFontFamilyPingFangSCMedium,
    SFFontFamilyPingFangSCSemibold
}SFFontFamily;

//以下几个必须得在theme.plist中定义
//字体大小
#define SFFontNaviBarTitle @"naviBarTitleFont"
#define SFFontNaviBarItemTitle @"naviBarItemTitleFont"
#define SFFontTabBarItemTitle @"tabBarItemTitleFont"

#define SFFontTitle1 @"titleFont1"
#define SFFontTitle2 @"titleFont2"
#define SFFontContent1 @"contentFont1"
#define SFFontContent2 @"contentFont2"
#define SFFontContent3 @"contentFont3"

/**
 *  推荐使用该category中的方法来获字体大小，这样可以方便的更换主题
 */
@interface UIFont (SFTheme)

+ (UIFont *)fontForName:(NSString *)name;
+ (UIFont *)fontForName:(NSString *)name fontFamily:(SFFontFamily)fontFamily;
+ (UIFont *)fontForName:(NSString *)name fontFamilyName:(NSString *)fontFamilyName;
+ (UIFont *)fontOfSize:(CGFloat)size;
+ (UIFont *)fontOfSize:(CGFloat)size fontFamily:(SFFontFamily)fontFamily;
+ (UIFont *)fontOfSize:(CGFloat)size fontFamilyName:(NSString *)fontFamilyName;

+ (UIFont *)fontForNaviBarTitle;
+ (UIFont *)fontForNaviBarTitleWithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForNaviBarItemTitle;
+ (UIFont *)fontForNaviBarItemTitleWithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForTabBarItemTitle;
+ (UIFont *)fontForTabBarItemTitleWithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForTitle1;
+ (UIFont *)fontForTitle1WithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForTitle2;
+ (UIFont *)fontForTitle2WithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForContent1;
+ (UIFont *)fontForContent1WithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForContent2;
+ (UIFont *)fontForContent2WithFontFamily:(SFFontFamily)fontFamily;

+ (UIFont *)fontForContent3;
+ (UIFont *)fontForContent3WithFontFamily:(SFFontFamily)fontFamily;

@end
