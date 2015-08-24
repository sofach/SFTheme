//
//  SFTheme.m
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//
#import <CocoaLumberjack.h>

#import "SFTheme.h"
#import "SFStyle.h"

static const DDLogLevel ddLogLevel = DDLogLevelVerbose;

@interface SFTheme ()

@property (strong, nonatomic) NSString *plistPath;

@end

@implementation SFTheme

- (id)init
{
    self = [super init];
    if (self) {
        _styles = [NSMutableDictionary dictionary];
    }
    return self;
}

+ (SFTheme *)themeWithBundleName:(NSString *)bundleName
{
    NSBundle *themeBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:bundleName ofType:@"bundle"]];
    SFTheme *theme = [[SFTheme alloc] init];
    theme.bundle = themeBundle;
    return theme;
}

+ (SFTheme *)themeWithPath:(NSString *)path
{
    SFTheme *theme = [[SFTheme alloc] init];
    theme.path = path;
    return theme;
}

#pragma mark - getter setter
- (void)setPlistPath:(NSString *)plistPath
{
    _plistPath = plistPath;
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:_plistPath];
    for (NSString *key in dic.allKeys) {
        NSDictionary *value = dic[key];
        SFStyle *style = [[SFStyle alloc] initWithDictionary:value];
        style.name = key;
        [_styles setObject:style forKey:key];
    }
}

- (void)setBundle:(NSBundle *)bundle
{
    NSString *plistPath = [bundle pathForResource:@"theme" ofType:@"plist"];
    if (!plistPath || plistPath.length<=0) {
        DDLogError(@"theme plist not found in bundle:%@", bundle.bundlePath);
        return;
    }
    _bundle = bundle;
    _path = nil;
    self.plistPath = plistPath;
}

- (void)setPath:(NSString *)path
{
    NSString *plistPath = [path stringByAppendingPathComponent:@"theme.plist"];
    if (!plistPath || plistPath.length<=0) {
        DDLogError(@"theme plist not found at path:%@", path);
        return;
    }
    _path = path;
    _bundle = nil;
    self.plistPath = plistPath;
}




#pragma mark public method
- (NSDictionary *)dictionary
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    for (NSString *key in self.styles.allKeys) {
        SFStyle *style = self.styles[key];
        [dic setObject:[style dictionary] forKey:key];
    }
    return dic;
}

- (BOOL)synchronize
{
    if (!self.plistPath) {
        return NO;
    }
    return [[self dictionary] writeToFile:self.plistPath atomically:YES];
}

- (UIImage *)imageForName:(NSString *)name
{
    if (!name) {
        return nil;
    }
    UIImage *img = nil;
    
    //if current scal=3, search for 3x first, if not found, search for 2x ...
    if (_bundle) {
        NSString *imgName = [NSString stringWithFormat:@"%@/%@", [_bundle.bundlePath lastPathComponent], name];
        img = [UIImage imageNamed:imgName];
    }
    if (_path) {
        NSInteger scale = [UIScreen mainScreen].scale;
        while (scale>1) {
            NSString *tempPath = [_path stringByAppendingPathComponent:[NSString stringWithFormat:@"%@@%lix.png", name, (long)scale]];
            if ([[NSFileManager defaultManager] fileExistsAtPath:tempPath]) {
                img = [UIImage imageWithContentsOfFile:tempPath];
                break;
            }
            scale--;
        }
    }
    
    if (!img) {
        DDLogWarn(@"the image name:%@ not found", name);
        return nil;
    }
    return img;
}

- (UIColor *)colorForName:(NSString *)name
{
    if (!name) {
        return nil;
    }
    SFStyle *style = [self.styles objectForKey:name];
    if (!style) {
        DDLogWarn(@"the color named:%@ not found", name);
        return nil;
    }
    return style.colorValue;
}

- (UIFont *)fontForName:(NSString *)name
{
    if (!name) {
        return nil;
    }
    SFStyle *style = [self.styles objectForKey:name];
    if (!style) {
        DDLogError(@"the font named:%@ not found", name);
        return nil;
    }
    return style.fontValue;
}

@end
