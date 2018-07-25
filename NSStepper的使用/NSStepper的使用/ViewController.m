//
//  ViewController.m
//  NSStepper的使用
//
//  Created by student on 2018/5/7.
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


- (IBAction)step:(NSStepper *)sender {
    
    self.value.stringValue = [NSString stringWithFormat:@"%d", [sender intValue]];
    
}
@end
