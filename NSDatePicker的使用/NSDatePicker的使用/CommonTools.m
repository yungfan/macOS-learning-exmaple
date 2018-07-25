//
//  CommonTools.m
//  NSDatePicker的使用
//
//  Created by student on 2018/5/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import "CommonTools.h"

@implementation CommonTools

+(NSString *)convertWeekday:(long)weekday{
    
    NSString *result = @"";
    
    switch (weekday) {
        case 1:
            result  = @"星期日";
            break;
        case 2:
            result  = @"星期一";
            break;
        case 3:
            result  = @"星期二";
            break;
        case 4:
            result  = @"星期三";
            break;
        case 5:
            result  = @"星期四";
            break;
        case 6:
            result  = @"星期五";
            break;
        case 7:
            result  = @"星期六";
            break;
            
        default:
            break;
    }
    
    
    return result;
    
    
}


+(NSString *)formmatDate:(NSDate *)date{

    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    formatter.dateFormat = @"yyyy年MM月dd日";

    return [formatter stringFromDate:date];

}

@end
