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
        default:
            break;
    }
    return  fontFamilyString;
}

+ (UIFont *)fontForName:(NSString *)name {
    return [[SFThemeManager sharedInstence] fontForName:name];
}
+ (UIFont *)fontForName:(NSString *)name fontFamily:(SFFontFamily)fontFamily {
    NSString *fontFamilyName = [UIFont fontFamily:fontFamily];
    return [self fontForName:name fontFamilyName:fontFamilyName];
}
+ (UIFont *)fontForName:(NSString *)name fontFamilyName:(NSString *)fontFamilyName {
    return [[SFThemeManager sharedInstence] fontForName:name fontFamily:fontFamilyName];
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

+ (UIFont *)fontForText1 {
    return [self fontForName:SFFontText1];
}
+ (UIFont *)fontForText1WithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontText1 fontFamily:fontFamily];
}

+ (UIFont *)fontForText2 {
    return [self fontForName:SFFontText2];
}
+ (UIFont *)fontForText2WithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontText2 fontFamily:fontFamily];
}

+ (UIFont *)fontForText3 {
    return [self fontForName:SFFontText3];
}
+ (UIFont *)fontForText3WithFontFamily:(SFFontFamily)fontFamily {
    return [self fontForName:SFFontText3 fontFamily:fontFamily];
}

@end
