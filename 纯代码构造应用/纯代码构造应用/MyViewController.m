//
//  MyViewController.m
//  纯代码构造应用
//
//  Created by student on 2018/6/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];  

}

//一定要重写该方法
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    CGRect frame = CGRectMake(0, 0, 600, 400);
    
    NSView *view = [[NSView alloc]initWithFrame:frame];
    
    self.view = view;
    
    self.view.wantsLayer = YES;
    
    self.view.layer.backgroundColor = [NSColor redColor].CGColor;
    
    return  self;
}

@end
