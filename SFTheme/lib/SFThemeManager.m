//
//  SFThemeManager.m
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import "SFThemeManager.h"
#import "SFTheme.h"

#define SFUserDefaultThemeFontOffset @"SFUserDefaultThemeFontOffset"

@interface SFThemeManager ()

@property (strong, nonatomic) SFTheme *theme;

@end

@implementation SFThemeManager
@synthesize fontOffset = _fontOffset;

+ (instancetype)sharedInstence
{
    static id sharedInstence = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedInstence = [[self alloc] init];
    });
    return sharedInstence;
}

- (id)init
{
    self = [super init];
    if (self) {
        _fontOffset = CGFLOAT_MAX;
    }
    return self;
}

- (CGFloat)fontOffset
{
    if (_fontOffset>1000000.0) {
        _fontOffset = [[NSUserDefaults standardUserDefaults] floatForKey:SFUserDefaultThemeFontOffset];
    }
    return _fontOffset;
}

- (void)setFontOffset:(CGFloat)fontOffset
{
    if (_fontOffset != fontOffset) {
        _fontOffset = fontOffset;
        [[NSUserDefaults standardUserDefaults] setFloat:_fontOffset forKey:SFUserDefaultThemeFontOffset];
    }
}

- (void)useTheme:(SFTheme *)theme
{
    _theme = theme;
    self.fontOffset = 0.0;
    [[NSNotificationCenter defaultCenter] postNotificationName:SFNotificationThemeChanged object:theme];
}

- (UIImage *)imageForName:(NSString *)name
{
    return [self.theme imageForName:name];
}

- (UIColor *)colorForName:(NSString *)name
{
    return [self.theme colorForName:name];
}

- (UIFont *)fontForName:(NSString *)name
{
    return [self.theme fontForName:name];
}

@end
