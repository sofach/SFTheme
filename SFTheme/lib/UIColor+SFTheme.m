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

+ (UIColor *)colorForName:(NSString *)name {
    return [[[SFThemeManager sharedInstence].theme styleForName:name] colorValue];
}


/************ navigation bar color *****************/
+ (UIColor *)colorForNaviBar {
    return [self colorForName:SFColorNaviBar];
}

+ (UIColor *)colorForNaviBarTitle {
    return [self colorForName:SFColorNaviBarTitle];
}

+ (UIColor *)colorForNaviBarItemTitle {
    return [self colorForName:SFColorNaviBarItemTitle];
}


/************* tab bar color *****************/
+ (UIColor *)colorForTabBar {
    return [self colorForName:SFColorTabBar];
}

+ (UIColor *)colorForTabBarItemTitleNormal {
    return [self colorForName:SFColorTabBarItemTitleNormal];
}

+ (UIColor *)colorForTabBarItemTitleSelected {
    return [self colorForName:SFColorTabBarItemTitleSelected];
}


/************** view color ***************/
+ (UIColor *)colorForViewContent {
    return [self colorForName:SFColorViewContent];
}

+ (UIColor *)colorForViewBackgroud {
    return [self colorForName:SFColorViewBackground];
}


/************** line color ***************/
+ (UIColor *)colorForLine {
    return [self colorForName:SFColorLine];
}

+ (UIColor *)colorForBorder {
    return [self colorForName:SFColorBorder];
}

+ (UIColor *)colorForMajor {
    return [self colorForName:SFColorMajor];
}

+ (UIColor *)colorForMinor {
    return [self colorForName:SFColorMinor];
}


/************** text color ***************/
+ (UIColor *)colorForTitle1 {
    return [self colorForName:SFColorTitle1];
}

+ (UIColor *)colorForTitle2 {
    return [self colorForName:SFColorTitle2];
}

+ (UIColor *)colorForContent1 {
    return [self colorForName:SFColorContent1];
}

+ (UIColor *)colorForContent2 {
    return [self colorForName:SFColorContent2];
}

+ (UIColor *)colorForContent3 {
    return [self colorForName:SFColorContent3];
}
@end
