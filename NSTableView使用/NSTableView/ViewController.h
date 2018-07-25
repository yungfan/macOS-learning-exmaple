//
//  ViewController.h
//  NSTableView
//
//  Created by student on 2018/5/23.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDataSource, NSTableViewDelegate>

@property(nonatomic, strong) NSArray *data;

@property (weak) IBOutlet NSTableView *tableView;
@end

