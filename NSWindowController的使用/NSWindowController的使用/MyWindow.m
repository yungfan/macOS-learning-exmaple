//
//  MyWindow.m
//  NSWindowController的使用
//
//  Created by student on 2018/6/1.
//  Copyright © 2018年 student. All rights reserved.
//

#import "MyWindow.h"

@implementation MyWindow

//基于SB的窗口调用过程如下：
//2018-06-01 10:15:35.192931+0800 NSWindowController的使用[2282:1511697] makeKeyWindow
//2018-06-01 10:15:35.193812+0800 NSWindowController的使用[2282:1511697] makeKeyAndOrderFront
//2018-06-01 10:15:35.220893+0800 NSWindowController的使用[2282:1511697] makeKeyWindow



- (void)makeKeyWindow {
    
    [super makeKeyWindow];
    
    NSLog(@"makeKeyWindow");
}

- (void)makeKeyAndOrderFront:(nullable id)sender {
   
    [super makeKeyAndOrderFront:sender];
    
    NSLog(@"makeKeyAndOrderFront");
    
}

- (void)orderFront:(id)sender {
    
    [super orderFront:sender];
    
     NSLog(@"orderFront");
    
}

- (void)orderOut:(id)sender {
    
    [super orderOut:sender];
    
     NSLog(@"orderOut");
}

- (void)dealloc {
    
    NSLog(@"MyWindow dealloc");
}

@end
