//
//  ViewController.h
//  NSSlider使用
//
//  Created by student on 2018/5/2.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

- (IBAction)slide:(NSSlider *)sender;

@property (weak) IBOutlet NSSlider *slider;

@property (weak) IBOutlet NSButton *playBtn;

- (IBAction)play:(id)sender;

@property(nonatomic, strong) NSTimer *timer;
@end

