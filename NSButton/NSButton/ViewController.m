//
//  ViewController.m
//  NSButton
//
//  Created by student on 2018/4/4.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    
    
    
    //    NSButton *btn =  [[NSButton alloc]initWithFrame:CGRectMake(10, 10, 100, 30)];
    
    //    //button类型
    //    [btn setButtonType:NSPushOnPushOffButton];
    //    //button风格
    //    btn.bezelStyle =  NSRoundedBezelStyle;
    //
    //    btn.title = @"注册";
    //
    //    //给按钮设置事件 和 iOS里面不一样 分两步 1、设置target 2、设置action
    //    btn.target = self;
    //
    //    btn.action = @selector(down:);
    
    // 也可以创建一个按钮 但是它的尺寸仅仅由其中的内容决定
    // iOS、Mac开发中，有一些控件不需要指定frame，默认也有大小（有内容），intrinsic content size（固定内容尺寸），如Label、Button、Image
    NSButton *btn2 = [NSButton buttonWithTitle:@"张三" target:self action:@selector(down:)];
    
    [self.view addSubview:btn2];
    
    
    
}


- (void)down:(NSButton *)sender {
    
    sender.title = @"会员";
    
}


- (IBAction)click:(NSButton *)sender {
    
    NSLog(@"%s", __func__);
    
    
    
}
@end
