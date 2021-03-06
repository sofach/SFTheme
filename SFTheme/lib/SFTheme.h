//
//  SFTheme.h
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFStyle.h"

#define NMWThemePlistName @"theme"
@interface SFTheme : NSObject

+ (SFTheme *)themeWithBundleName:(NSString *)bundleName;

- (void)addStylesWithBundleName:(NSString *)bundleName;

- (SFStyle *)styleForName:(NSString *)name;

@end
