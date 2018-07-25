//
//  ContentView.m
//  NSWindowController的使用
//
//  Created by student on 2018/6/1.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView

+(ContentView *)getContentView{
    
    NSArray *array = [NSArray array];

    BOOL isSuccess  = [[NSBundle mainBundle]loadNibNamed:@"ContentView" owner:nil topLevelObjects:&array];

    if (isSuccess) {
        
        ContentView *view = [array lastObject];
        
        //设置以后不会因为尺寸问题造成崩溃
        [view setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        return view;
        
    }
    
    return nil;
}


@end
