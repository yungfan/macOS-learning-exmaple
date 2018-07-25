//
//  ViewController.h
//  NSStepper的使用
//
//  Created by student on 2018/5/7.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *value;

- (IBAction)step:(NSStepper *)sender;

@end

