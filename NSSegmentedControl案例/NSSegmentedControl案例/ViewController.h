//
//  ViewController.h
//  NSSegmentedControl案例
//
//  Created by student on 2018/4/18.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

- (IBAction)changeFlower:(NSSegmentedControl *)sender;

@property (weak) IBOutlet NSImageView *dog;

@property (weak) IBOutlet NSImageView *flower;
@end

