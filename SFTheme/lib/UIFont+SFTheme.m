//
//  UIFont+SFTheme.m
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import "UIFont+SFTheme.h"
#import "SFThemeManager.h"

@implementation UIFont (SFTheme)

+ (NSString *)fontFamily:(SFFontFamily)fontFamily {
    NSString *fontFamilyString = @"";
    switch (fontFamily) {
        case SFFontFamilyPingFangSC:
            fontFamilyString = @"PingFangSC-Regular";
            break;
        case SFFontFamilyPingFangSCLight:
            fontFamilyString = @"PingFangSC-Light";
            break;
        case SFFontFamilyPingFangSCMedium:
            fontFamilyString = @"PingFangSC-Medium";
            break;
        case SFFontFamilyPingFangSCSemibold:
            fontFamilyString = @"PingFangSC-Semibold";
        default:
            break;
    }
    return  fontFamilyString;
}

+ (UIFont *)fontForName:(NSString *)name {
    return [self fontForName:name fontFamily:SFFontFamilyPingFangSC];
}

+ (UIFont *)fontForName:(NSString *)name fontFamily:(SFFontFamily)fontFamily {
    NSString *fontFamilyName = [UIFont fontFamily:fontFamily];
    return [self fontForName:name fontFamilyName:fontFamilyName];
}

+ (UIFont *)fontForName:(NSString *)name fontFamilyName:(NSString *)fontFamilyName {
    return [[[SFThemeManager sharedInstence].theme styleForName:name] fontValueWithFontFamily:fontFamilyName];
}

+ (UIFont *)fontOfSize:(CGFloat)size {
    return [self fontOfSize:size fontFamily:SFFontFamilyPingFangSC];
}

+ (UIFont *)fontOfSize:(CGFloat)size fontFamily:(SFFontFamily)fontFamily {
    NSString *fontFamilyName = [UIFont fontFamily:fontFamily];
    return [self fontOfSize:size fontFamilyName:fontFamilyName];
}

+ (UIFont *)fontOfSize:(CGFloat)size fontFamilyName:(NSString *)fontFamilyName {
    UIFont *font = [UIFont fontWithName:fontFamilyName size:size];
    if (!font) {
        font = [UIFont systemFontOfSize:size];
    }
    return font;
}

+ (UIFont *)fontForNaviBarTitle {
    return [self fontForName:SFFontNaviBarTitle];
}
+ (UIFont *)fontForNaviBarTitleWithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontNaviBarTitle fontFamily:fontFamily];
}


+ (UIFont *)fontForNaviBarItemTitle {
    return [self fontForName:SFFontNaviBarItemTitle];
}
+ (UIFont *)fontForNaviBarItemTitleWithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontNaviBarItemTitle fontFamily:fontFamily];
}

+ (UIFont *)fontForTabBarItemTitle {
    return [self fontForName:SFFontTabBarItemTitle];
}
+ (UIFont *)fontForTabBarItemTitleWithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontTabBarItemTitle fontFamily:fontFamily];
}

+ (UIFont *)fontForTitle1 {
    return [self fontForName:SFFontTitle1];
}
+ (UIFont *)fontForTitle1WithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontTitle1 fontFamily:fontFamily];
}
+ (UIFont *)fontForTitle2 {
    return [self fontForName:SFFontTitle2];
}
+ (UIFont *)fontForTitle2WithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontTitle2 fontFamily:fontFamily];
}

+ (UIFont *)fontForContent1 {
    return [self fontForName:SFFontContent1];
}
+ (UIFont *)fontForContent1WithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontContent1 fontFamily:fontFamily];
}
+ (UIFont *)fontForContent2 {
    return [self fontForName:SFFontContent2];
}
+ (UIFont *)fontForContent2WithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontContent2 fontFamily:fontFamily];
}
+ (UIFont *)fontForContent3 {
    return [self fontForName:SFFontContent3];
}
+ (UIFont *)fontForContent3WithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontContent3 fontFamily:fontFamily];
}
@end
