//
//  SBViewController.m
//  NSViewController三种创建方式
//
//  Created by student on 2018/6/4.
//  Copyright © 2018年 student. All rights reserved.
//

#import "SBViewController.h"

@interface SBViewController ()

- (IBAction)dismiss:(id)sender;

@property (weak) IBOutlet NSTextField *name;


@end

@implementation SBViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    self.name.stringValue = self.strValue;
}

- (IBAction)dismiss:(id)sender {
    
    [self dismissController:self];
    
}
@end
