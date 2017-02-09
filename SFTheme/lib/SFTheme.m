//
//  SFTheme.m
//  SFTheme
//
//  Created by 陈少华 on 15/8/24.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import "SFTheme.h"
#import "SFStyle.h"

@interface SFTheme ()

@property (strong, nonatomic) NSMutableDictionary *styles;
@property (strong, nonatomic) NSMutableArray *bundleNames;

@end

@implementation SFTheme

- (id)init {
    self = [super init];
    if (self) {
        _styles = [NSMutableDictionary dictionary];
    }
    return self;
}

+ (SFTheme *)themeWithBundleName:(NSString *)bundleName {

    SFTheme *theme = [[SFTheme alloc] init];
    [theme addStylesWithBundleName:bundleName];
    return theme;
}

- (void)addStylesWithBundleName:(NSString *)bundleName {
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:bundleName ofType:@"bundle"]];
    NSString *plistPath = [bundle pathForResource:NMWThemePlistName ofType:@"plist"];
    if (!plistPath || plistPath.length<=0) {
        NSLog(@"[error] theme plist not found in bundle:%@", bundle.bundlePath);
        return;
    }
    [_bundleNames addObject:bundleName];
    [self addStylesWithPlistPath:plistPath];
}

#pragma mark - getter setter
- (void)addStylesWithPlistPath:(NSString *)plistPath {

    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    for (NSString *key in dic.allKeys) {
        
        NSDictionary *value = dic[key];
        SFStyle *style = _styles[key];
        if (!style) {    
            style = [[SFStyle alloc] initWithDictionary:value];
            style.name = key;
            [_styles setObject:style forKey:key];
        } else {
            NSLog(@"[warn] style named:%@ already exist:%@", key, style.value);
        }
    }
}



#pragma mark public method

- (SFStyle *)styleForName:(NSString *)name {
    if (!name) {
        return nil;
    }
    SFStyle *style = [self.styles objectForKey:name];
    if (!style) {
        NSLog(@"[warn] style named:%@ not found", name);
        return nil;
    }
    return style;
}

@end
