//
//  NSArray+Log.m
//  CheckBox使用
//
//  Created by student on 2018/4/9.
//  Copyright © 2018年 student. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)


- (NSString *)description
{
    NSMutableString *str = [NSMutableString stringWithFormat:@"%lu (\n", (unsigned long)self.count];
    
    for (NSString * obj in self) {
        
        if([self.firstObject isEqualToString:obj]){
            
            [str appendFormat:@"\t%@", obj];
            
        }else{
            
            [str appendFormat:@",\n\t%@", obj];
        }
    }
    
    [str appendString:@"\n)"];
    
    return str;
}

@end
