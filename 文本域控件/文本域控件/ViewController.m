//
//  ViewController.m
//  文本域控件
//
//  Created by student on 2018/3/21.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)click:(id)sender {
    
    NSLog(@"%@", self.tv.string);
    
}
@end
