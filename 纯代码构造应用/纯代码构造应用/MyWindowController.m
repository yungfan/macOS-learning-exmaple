//
//  MyWindowController.m
//  纯代码构造应用
//
//  Created by student on 2018/6/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import "MyWindowController.h"

@interface MyWindowController ()

@property (strong, nonatomic) MyViewController *myViewController;

@property (strong, nonatomic) NSWindow *myWindow;

@end

@implementation MyWindowController

- (void)windowDidLoad {
    
    [super windowDidLoad];

 
}

//一定要重写该方法
- (instancetype)init{
    
    self = [super init];
    
    if(!self){
        
        return nil;
        
    }
    
    //设置window与windowController之间的关系
    self.window = self.myWindow;
    self.window.windowController = self;
    
    
    //设置contentViewController
    self.contentViewController = self.myViewController;
    
    [self.window center];
    
    return self;
}



-(MyViewController *)myViewController{

    if (!_myViewController) {
        
        _myViewController = [[MyViewController alloc]init];
        
    }

    return _myViewController;

}

-(NSWindow *)myWindow{
    
    if (!_myWindow) {
        
        CGRect frame = CGRectMake(0, 0, 600, 400);
        
        
        NSUInteger style =  NSWindowStyleMaskTitled | NSWindowStyleMaskClosable |NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable;

        
        _myWindow = [[NSWindow alloc]initWithContentRect:frame styleMask:style backing:NSBackingStoreBuffered defer:YES];
        
        
       _myWindow.title = @"纯代码构造应用";
        
    }

    return _myWindow;
}

@end
