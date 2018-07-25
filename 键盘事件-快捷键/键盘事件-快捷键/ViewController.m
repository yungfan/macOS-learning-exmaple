//
//  ViewController.m
//  键盘事件-快捷键
//
//  Created by student on 2018/6/20.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

-(void)awakeFromNib{
    
    [NSEvent addLocalMonitorForEventsMatchingMask:NSEventMaskKeyDown handler:^NSEvent * _Nullable(NSEvent * _Nonnull aEvent) {
        
        [self keyDown:aEvent];
        
        return aEvent;
    }];
    
    [NSEvent addLocalMonitorForEventsMatchingMask:NSEventMaskFlagsChanged handler:^NSEvent * _Nullable(NSEvent * _Nonnull aEvent) {
        
        [self flagsChanged:aEvent];
        
        return aEvent;
    }];
}


-(void)keyDown:(NSEvent *)event{
    
    NSLog(@"keyDown");
    
}


-(void)keyUp:(NSEvent *)event{
    
    NSLog(@"keyUp");
    
}

@end
