//
//  MyWindowController.m
//  NSWindowController的使用
//
//  Created by student on 2018/6/1.
//  Copyright © 2018年 student. All rights reserved.
//

#import "MyWindowController.h"
#import "ContentView.h"

@interface MyWindowController ()

@end

@implementation MyWindowController

- (void)windowDidLoad {
    
    [super windowDidLoad];
    
    NSLog(@"windowDidLoad");
    
    
    //如何通过纯代码方式添加视图到Window上
    
    //方法一.
    
//    //1.创建一个视图作为内容视图
//    NSRect rect = NSRectFromCGRect(CGRectMake(0, 0, self.window.frame.size.width, self.window.frame.size.height));
//    
//    NSView *contentView = [[NSView alloc] initWithFrame:rect];
//    
//    contentView.wantsLayer = YES;
//    
//    contentView.layer.backgroundColor = [NSColor redColor].CGColor;
//    
//    //2.往内容视图添加视图
//    NSDatePicker *picker = [[NSDatePicker alloc]initWithFrame:NSRectFromCGRect(CGRectMake(0, 0, 100, 30))];
//    
//    [contentView addSubview:picker];
//    
//    
//    //3.将自己创建的内容视图复制给控制器的window属性的contenView
//    self.window.contentView = contentView;
    
    
    //通过XIB创建NSView
    
    ContentView *contentView = [ContentView getContentView];
    
    contentView.frame = NSRectFromCGRect(CGRectMake(0, 0, self.window.frame.size.width, self.window.frame.size.height));
    
    self.window.contentView = contentView;
    
    //方法二.
    //1.创建一个视图控制器作为内容视图控制器
    
//    NSViewController *vc = [[NSStoryboard storyboardWithName:@"Main" bundle:nil] instantiateControllerWithIdentifier:@"abc"];
//    
//    
//    //2.将自己创建的内容视图复制给控制器的window属性的contenView
//    self.window.contentViewController = vc;

    
    
}

@end
