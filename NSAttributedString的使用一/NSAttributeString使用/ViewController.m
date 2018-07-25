//
//  ViewController.m
//  NSAttributeString使用
//
//  Created by student on 2018/3/30.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *str = @"人生若只如初见，何事悲风秋画扇。\n等闲变却故人心，却道故人心易变。\n骊山语罢清宵半，泪雨霖铃终不怨。\n何如薄幸锦衣郎，比翼连枝当日愿。";

    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc]initWithString:str];
    
    //1. 属性的名字 2.属性的值 3.范围
    [attrString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:30.0f] range:NSMakeRange(0, 16)];
    
    
    [attrString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(17, 16)];
    
    
    [attrString addAttribute:NSBackgroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(34, 16)];
    
    [attrString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:20.0f] range:NSMakeRange(50, 17)];
    
    [attrString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle]  range:NSMakeRange(50, 17)];
    
    [attrString addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(50, 17)];

    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 0)];
    
    label.backgroundColor = [UIColor greenColor];
    //自动换行
    label.numberOfLines = 0;
    //设置label的文本
    label.attributedText = attrString;
    //label高度自适应
    [label sizeToFit];
    
    [self.view addSubview:label];

    
    label.center = self.view.center;

    
    
}

@end
