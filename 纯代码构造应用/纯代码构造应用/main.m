//
//  main.m
//  纯代码构造应用
//
//  Created by student on 2018/6/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"

int main(int argc, const char * argv[]) {
    
    
    //拿到全局的NSApplication
    NSApplication *app = [NSApplication sharedApplication];
    
    AppDelegate *delegate = [[AppDelegate alloc]init];
    
    //关联AppDelegate
    [app setDelegate:delegate];
    
    [app run];
    
    return NSApplicationMain(argc, argv);
    
    
    
    
}
