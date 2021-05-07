//
//  ViewController.h
//  窗口对象
//
//  Created by student on 2018/3/7.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (nonatomic,assign) NSModalSession sessionCode;

@property (nonatomic,strong) NSWindow *myWindow;

@property (nonatomic, strong) NSWindowController *myWindowController;


- (IBAction)modal:(id)sender;

- (IBAction)session:(id)sender;
@end

