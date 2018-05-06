//
//  NSDate+FormatterTime.h
//  minglongyongche
//
//  Created by jiamanu on 2018/4/23.
//  Copyright © 2018年 minglongkeji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FormatterTime)

+ (NSString *)getYMDhmFormatterTime:(NSString *)timeInterval;

//星期 04月28日 周三 12:00
+ (NSString *)getMDWhmFormatterTime:(NSString *)timeInterval;


@end
