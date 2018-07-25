//
//  ViewController.h
//  NSPopover
//
//  Created by student on 2018/5/18.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property(nonatomic, strong) NSPopover *popover;

- (IBAction)showPopover:(NSButton *)sender;

@end

