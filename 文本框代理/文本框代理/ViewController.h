//
//  ViewController.h
//  文本框代理
//
//  Created by student on 2018/3/23.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTextFieldDelegate>

@property (weak) IBOutlet NSTextField *tf;

//weak与unsafe_unretained功能差不多
@property (unsafe_unretained) IBOutlet NSTextView *tv;

@property (weak) IBOutlet NSScrollView *sv;

- (IBAction)click:(id)sender;

@end

