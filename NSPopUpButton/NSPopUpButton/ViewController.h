//
//  ViewController.h
//  NSPopUpButton
//
//  Created by student on 2018/4/25.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSPopUpButton *popUpButton;
- (IBAction)selectProvince:(NSPopUpButton *)sender;

@end

