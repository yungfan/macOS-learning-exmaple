//
//  ViewController.h
//  文本域控件
//
//  Created by student on 2018/3/21.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (unsafe_unretained) IBOutlet NSTextView *tv;
- (IBAction)click:(id)sender;

@end

