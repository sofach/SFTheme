//
//  NSNumber+SFTheme.m
//  SFTheme
//
//  Created by 陈少华 on 2017/2/9.
//  Copyright © 2017年 sofach. All rights reserved.
//

#import "NSNumber+SFTheme.h"
#import "SFThemeManager.h"

@implementation NSNumber (SFTheme)

+ (NSNumber *)numberForName:(NSString *)name {
    return [[SFThemeManager sharedInstence].theme styleForName:name].numberValue;
}


+ (CGFloat)floatForLineHeight {
    return [self numberForName:SFNumberLineHeight].floatValue;
}
+ (CGFloat)floatForBorderWidth {
    return [self numberForName:SFNumberBorderWidth].floatValue;
}
+ (CGFloat)floatForMarginX {
    return [self numberForName:SFNumberMarginX].floatValue;
}
+ (CGFloat)floatForMarginY {
    return [self numberForName:SFNumberMarginY].floatValue;
}
+ (CGFloat)floatForPaddingX {
    return [self numberForName:SFNumberPaddingX].floatValue;
}
+ (CGFloat)floatForPaddingY {
    return [self numberForName:SFNumberPaddingY].floatValue;
}

@end
