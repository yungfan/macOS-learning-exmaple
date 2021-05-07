//
//  ViewController.h
//  NSSearchField使用
//
//  Created by student on 2018/3/26.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSSearchField *nsf;
- (IBAction)search:(id)sender;

@end

