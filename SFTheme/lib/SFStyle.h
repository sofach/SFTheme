//
//  SFStyle.h
//  SFTheme
//
//  Created by 陈少华 on 15/4/10.
//  Copyright (c) 2015年 sofach. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    SFStyleTypeFont = 0,
    SFStyleTypeColor,
    SFStyleTypeOther
}SFStyleType;

@interface SFStyle : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *value;
@property (assign, nonatomic) SFStyleType type;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)dictionary;

- (UIFont *)fontValue;
- (UIFont *)fontValueWithFontFamily:(NSString *)fontFamily;

- (UIColor *)colorValue;

@end
