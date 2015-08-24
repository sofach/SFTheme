//
//  UIImage+SFTheme.m
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import "UIImage+SFTheme.h"
#import "SFThemeManager.h"

@implementation UIImage (SFTheme)

+ (UIImage *)imageForName:(NSString *)name
{
    return [[SFThemeManager sharedInstence] imageForName:name];
}

+ (UIImage *)imageForTabBarBackground
{
    return [self imageForName:SFImageTabBarBackground];
}

+ (UIImage *)imageForNaviBarBackground
{
    return [self imageForName:SFImageNaviBarBackground];
}


@end
