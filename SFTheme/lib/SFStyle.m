//
//  SFStyle.m
//  SFTheme
//
//  Created by 陈少华 on 15/4/10.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import "SFStyle.h"
#import "SFThemeManager.h"

@interface SFStyle ()

@end

@implementation SFStyle

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;
}

- (NSDictionary *)dictionary {
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:[NSNumber numberWithInteger:self.type] forKey:@"type"];
    [dic setObject:self.value?self.value:@"" forKey:@"value"];
     
    return dic;
}

- (UIFont *)fontValue {
    if (self.type != SFStyleTypeFont) {
        NSLog(@"warn: %@ is not font", _name);
        return nil;
    }
    
    UIFont *font = [UIFont systemFontOfSize:[self.value floatValue]+[SFThemeManager sharedInstence].fontOffset];

    return font;
}

- (UIFont *)fontValueWithFontFamily:(NSString *)fontFamily {
    UIFont *font = [UIFont fontWithName:fontFamily size:[self.value floatValue]+[SFThemeManager sharedInstence].fontOffset];
    if (!font) {
        font = [UIFont systemFontOfSize:[self.value floatValue]+[SFThemeManager sharedInstence].fontOffset];
    }
    return font;
}

- (UIColor *)colorValue {
    if (self.type != SFStyleTypeColor) {
        NSLog(@"warm: not color");
        return nil;
    }
    
    NSArray *rgb = [[self.value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] componentsSeparatedByString:@","];
    if (rgb.count != 4) {
        NSLog(@"error: color style format should be [r,g,b,alpha]");
        return nil;
    }
    UIColor *color = [UIColor colorWithRed:[rgb[0] floatValue]/255 green:[rgb[1] floatValue]/255 blue:[rgb[2] floatValue]/255 alpha:[rgb[3] floatValue]];
    
    return color;
}

@end
