//
//  UIImage+SFTheme.h
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SFImageTabBarBackground @"tabBarBackgroundImage"
#define SFImageNaviBarBackground @"naviBarBackgroundImage"

@interface UIImage (SFTheme)

+ (UIImage *)imageForName:(NSString *)name;

+ (UIImage *)imageForTabBarBackground;
+ (UIImage *)imageForNaviBarBackground;

@end
