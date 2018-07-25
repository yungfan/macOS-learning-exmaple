//
//  AppDelegate.m
//  纯代码构造应用
//
//  Created by student on 2018/6/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import "AppDelegate.h"
#import "MyWindowController.h"

@interface AppDelegate ()

@property(strong, nonatomic) MyWindowController *rootViewController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    // 显示WindowController
    [self.rootViewController showWindow:self];
    
   
}


-(MyWindowController *)rootViewController{

    if (!_rootViewController) {
        
        _rootViewController = [[MyWindowController alloc]init];
        
    }

    return _rootViewController;

}

@end
