//
//  SFTheme.h
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SFThemeManager.h"
#import "UIColor+SFTheme.h"
#import "UIFont+SFTheme.h"
#import "UIImage+SFTheme.h"

@interface SFTheme : NSObject

@property (strong, nonatomic) NSBundle *bundle;
@property (strong, nonatomic) NSString *path;

@property (strong, nonatomic) NSMutableDictionary *styles;

+ (SFTheme *)themeWithBundleName:(NSString *)bundleName;
+ (SFTheme *)themeWithPath:(NSString *)path;

- (NSDictionary *)dictionary;
- (BOOL)synchronize;

- (UIFont *)fontForName:(NSString *)name;
- (UIFont *)fontForName:(NSString *)name fontFamily:(NSString *)fontFamily;

- (UIColor *)colorForName:(NSString *)name;
- (UIImage *)imageForName:(NSString *)name;

@end
