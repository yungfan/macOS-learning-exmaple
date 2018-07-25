//
//  ViewController.m
//  NSViewController生命周期
//
//  Created by student on 2018/6/4.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController



//-(void)loadView{
//
//    NSLog(@"loadView");
//
//}

//当视图被内存加载之后执行的代码。XIB、SB ---> NIB、StoryBoard_二进制文件
- (void)viewDidLoad {
    
     [super viewDidLoad];

     NSLog(@"viewDidLoad");
    
     NSLog(@"%@", NSStringFromRect(self.customView.frame));

}

-(void)viewWillAppear{
    
    [super viewWillAppear];

    NSLog(@"viewWillAppear");

}

-(void)viewDidAppear{
    
    [super viewDidAppear];

    NSLog(@"viewDidAppear");
    
    NSLog(@"%@", NSStringFromRect(self.customView.frame));

}

-(void)updateViewConstraints{

    [super updateViewConstraints];
    
    NSLog(@"updateViewConstraints");


}

-(void)viewWillLayout{

    [super viewWillLayout];
    
    NSLog(@"viewWillLayout");


}

-(void)viewDidLayout{

    [super viewDidLayout];
    
    NSLog(@"viewDidLayout");

}


@end
