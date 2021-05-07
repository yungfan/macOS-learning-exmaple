//
//  ViewController.m
//  窗口对象
//
//  Created by student on 2018/3/7.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    
    //name后面NSWindowWillCloseNotification代表的就是window那个关闭按钮的通知
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(windowWillClose:)
                                                 name:NSWindowWillCloseNotification
                                               object:nil];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

}




- (void)windowWillClose:(NSNotification *)notification {
    
    [[NSApplication sharedApplication]stopModal];
    
    if (_sessionCode != 0) {
        [[NSApplication sharedApplication]endModalSession:_sessionCode];
    }
}

//懒加载
- (NSWindow*)myWindow {
    if(!_myWindow){
        
        
        NSRect frame = CGRectMake(0,0,375,667);
        NSUInteger style =  NSWindowStyleMaskTitled | NSWindowStyleMaskClosable |NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable;
        _myWindow = [[NSWindow alloc]initWithContentRect:frame styleMask:style backing:NSBackingStoreBuffered defer:YES];
        _myWindow.title = @"iPhone";
        //窗口显示
        [_myWindow makeKeyAndOrderFront:self];
        //窗口居中
        [_myWindow center];
        
    }
    return _myWindow;
}

- (IBAction)modal:(id)sender {
    
    [[NSApplication sharedApplication]runModalForWindow:self.myWindow];
}

- (IBAction)session:(id)sender{
    
      _sessionCode = [[NSApplication sharedApplication]beginModalSessionForWindow:self.myWindow];


}

@end
