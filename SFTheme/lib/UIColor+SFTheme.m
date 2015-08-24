//
//  UIColor+SFTheme.m
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import "UIColor+SFTheme.h"
#import "SFThemeManager.h"

@implementation UIColor (SFTheme)

+ (UIColor *)colorForName:(NSString *)name
{
    return [[SFThemeManager sharedInstence] colorForName:name];
}


/************ navigation bar color *****************/
+ (UIColor *)colorForNaviBarTint
{
    return [self colorForName:SFColorNaviBarTint];
}

+ (UIColor *)colorForNaviBarBarTint
{
    return [self colorForName:SFColorNaviBarBarTint];
}

+ (UIColor *)colorForNaviBarTitle
{
    return [self colorForName:SFColorNaviBarTitle];
}
+ (UIColor *)colorForNaviBarItemTitle
{
    return [self colorForName:SFColorNaviBarItemTitle];
}


/************* tab bar color *****************/
+ (UIColor *)colorForTabBarTint
{
    return [self colorForName:SFColorTabBarTint];
}
+ (UIColor *)colorForTabBarBarTint
{
    return [self colorForName:SFColorTabBarBarTint];
}

+ (UIColor *)colorForTabBarItemTitleNormal
{
    return [self colorForName:SFColorTabBarItemTitleNormal];
}

+ (UIColor *)colorForTabBarItemTitleSelected
{
    return [self colorForName:SFColorTabBarItemTitleSelected];
}


/************** view color ***************/
+ (UIColor *)colorForViewContent
{
    return [self colorForName:SFColorViewContent];
}

+ (UIColor *)colorForViewBackgroud
{
    return [self colorForName:SFColorViewBackground];
}


/************** text color ***************/
+ (UIColor *)colorForText1
{
    return [self colorForName:SFColorText1];
}

+ (UIColor *)colorForText2
{
    return [self colorForName:SFColorText2];
}

+ (UIColor *)colorForText3
{
    return [self colorForName:SFColorText3];
}

@end
