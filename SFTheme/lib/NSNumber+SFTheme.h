//
//  NSNumber+SFTheme.h
//  SFTheme
//
//  Created by 陈少华 on 2017/2/9.
//  Copyright © 2017年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SFNumberLineHeight @"lineHeight"
#define SFNumberBorderWidth @"borderWidth"
#define SFNumberCornerRadius @"cornerRadius"
#define SFNumberMarginX @"marginX"
#define SFNumberMarginY @"marginY"
#define SFNumberPaddingX @"paddingX"
#define SFNumberPaddingY @"paddingY"

@interface NSNumber (SFTheme)

/**
 *  根据plist中定义的key获取number
 *
 *  @param name plist中定义的key
 *
 *  @return number
 */
+ (NSNumber *)numberForName:(NSString *)name;

+ (CGFloat)floatForLineHeight;
+ (CGFloat)floatForBorderWidth;
+ (CGFloat)floatForCornerRadius;
+ (CGFloat)floatForMarginX;
+ (CGFloat)floatForMarginY;
+ (CGFloat)floatForPaddingX;
+ (CGFloat)floatForPaddingY;

@end
