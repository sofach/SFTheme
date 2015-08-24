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

+ (UIFont *)fontForName:(NSString *)name
{
    return [[SFThemeManager sharedInstence] fontForName:name];
}

+ (UIFont *)fontForNaviBarTitle
{
    return [self fontForName:SFFontNaviBarTitle];
}

+ (UIFont *)fontForNaviBarItemTitle
{
    return [self fontForName:SFFontNaviBarItemTitle];
}

+ (UIFont *)fontForTabBarItemTitle
{
    return [self fontForName:SFFontTabBarItemTitle];
}

+ (UIFont *)fontForText1
{
    return [self fontForName:SFFontText1];
}

+ (UIFont *)fontForText2
{
    return [self fontForName:SFFontText2];
}

+ (UIFont *)fontForText3
{
    return [self fontForName:SFFontText3];
}

@end
