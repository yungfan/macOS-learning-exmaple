//
//  ViewController.h
//  NSProgressIndicator使用
//
//  Created by student on 2018/5/7.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSProgressIndicator *inCirclePI;
@property (weak) IBOutlet NSProgressIndicator *circlePI;

- (IBAction)loadData:(NSButtonCell *)sender;
- (IBAction)finishLoad:(NSButton *)sender;

@property (weak) IBOutlet NSProgressIndicator *barPI;
@property (weak) IBOutlet NSProgressIndicator *inBarPI;

@property(nonatomic, strong) NSTimer *timer;

@end

