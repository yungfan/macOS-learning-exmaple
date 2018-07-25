//
//  ViewController.m
//  NSViewController三种创建方式
//
//  Created by student on 2018/6/4.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"
#import "XIBViewController.h"
#import "SBViewController.h"
#import "XIB2ViewController.h"
#import "XIB3ViewController.h"
#import "CodeViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

}

//一.基于XIB，创建的时候勾选了also create xib
-(void)xibCreate{
    
    XIBViewController *xibVC = [[XIBViewController alloc]init];
    
    
    //Modal方式切换
    [self presentViewControllerAsModalWindow:xibVC];
    
}



//二.基于XIB2，创建时没勾，后来创建一个XIB，方式1
//如果xib是后创建的，所以需要做以下工作
//1.需要XIB与类关联，view的File Ower设置为VC
//2.需要设置控制器的View，否则会报错-[XIB2ViewController loadView] loaded the "XIB2ViewController" nib but no view was set.错误的解决办法：将XIB的view的outlet拽线到File Ower
-(void)xib2Create{
    
    
    //以下两种方式都可以
    //XIB2ViewController *xibVC = [[XIB2ViewController alloc]initWithNibName:@"XIB2ViewController" bundle:nil];
    
    XIB2ViewController *xibVC = [[XIB2ViewController alloc]init];
    
    [self presentViewControllerAsModalWindow:xibVC];
    
}

//二.基于XIB2，创建时没勾，后来创建一个XIB，方式2
//说白了如果创建时勾上了创建XIB 会帮我们做两件事 1、设置File Owner   2、设置控制器的View，那么我们自己后创建的XIB的View需要手动做这两件事
-(void)xib3Create{

    XIB3ViewController *xibVC = [[XIB3ViewController alloc]init];

     [self presentViewControllerAsModalWindow:xibVC];

}


//三.基于SB
-(void)sbCreate{
    
    SBViewController *sbVC = [[NSStoryboard storyboardWithName:@"Main" bundle:nil] instantiateControllerWithIdentifier:@"abc"];
    
    
    sbVC.strValue = @"2018.6.6";
    
    //Sheet方式切换
    [self presentViewControllerAsSheet:sbVC];
    
}

//三.基于纯代码
-(void)codeCreate:(NSButton *)sender{

    CodeViewController *viewController =  [[CodeViewController alloc]init];
    
    
    //必须要设置控制器的View 或者去重写控制器的loadView函数
    CGRect frame = CGRectMake(0, 0, 200, 200);
    
    NSView *view = [[NSView alloc]initWithFrame:frame];
    
    viewController.view = view;
    
   
    //Popver方式切换
    [self presentViewController:viewController
         asPopoverRelativeToRect:sender.frame
                          ofView:self.view
                   preferredEdge:NSMinYEdge
                        behavior:NSPopoverBehaviorTransient];


}


- (IBAction)xib:(id)sender {
    
    [self xibCreate];
}


- (IBAction)xib2:(id)sender {
    
    [self xib2Create];

    
}

- (IBAction)xib3:(id)sender {
    
    [self xib3Create];
}


- (IBAction)sb:(id)sender {
    
    [self sbCreate];
}

- (IBAction)code:(id)sender {
    

    [self codeCreate:sender];
}




@end
