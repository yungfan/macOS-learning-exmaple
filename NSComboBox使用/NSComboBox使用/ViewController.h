//
//  ViewController.h
//  NSComboBox使用
//
//  Created by student on 2018/4/23.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSComboBoxDataSource, NSComboBoxDelegate>

- (IBAction)selectProvince:(NSComboBox *)sender;

@property(nonatomic, strong) NSMutableArray *data;

@end

