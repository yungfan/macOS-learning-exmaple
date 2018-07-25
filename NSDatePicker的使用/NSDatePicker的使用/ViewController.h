//
//  ViewController.h
//  NSDatePicker的使用
//
//  Created by student on 2018/5/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSDatePicker *picker1;
@property (weak) IBOutlet NSDatePicker *picker3;

- (IBAction)dateValue:(NSButton *)sender;
- (IBAction)dateChange:(NSDatePicker *)sender;
- (IBAction)calendarValue:(NSDatePicker *)sender;
@end

