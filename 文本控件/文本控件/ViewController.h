//
//  ViewController.h
//  文本控件
//
//  Created by student on 2018/3/19.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTextFieldDelegate>

@property (weak) IBOutlet NSTextField *username;
@property (weak) IBOutlet NSSecureTextField *password;

- (IBAction)logIn:(id)sender;
- (IBAction)cancel:(id)sender;



@end

