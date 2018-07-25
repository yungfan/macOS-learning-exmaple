//
//  ViewController.m
//  NSAttributedString的使用
//
//  Created by student on 2018/4/2.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]init];

    
    NSString *str0 = @"设置字体格式和大小";
    NSDictionary *dictAttr0 = @{
                                
                                NSFontAttributeName: [UIFont systemFontOfSize:30],
                                
                                NSForegroundColorAttributeName:[UIColor orangeColor]
        
                                };
    
    NSAttributedString *attr0 = [[NSAttributedString alloc]initWithString:str0 attributes:dictAttr0];
    
    
    [attributedString appendAttributedString:attr0];

    
    NSString *str1 = @"\n设置字体颜色\n";
    NSDictionary *dictAttr1 = @{
                                
                                NSForegroundColorAttributeName:[UIColor redColor]
                                
                                };
    NSAttributedString *attr1 = [[NSAttributedString alloc]initWithString:str1 attributes:dictAttr1];
    
    [attributedString appendAttributedString:attr1];


    
    NSString *str4 = @"\n设置字符间距";
    
    NSDictionary *dictAttr4 = @{
                                
                                NSKernAttributeName:@(4)
                                
                                
                                };
    
    NSAttributedString *attr4 = [[NSAttributedString alloc]initWithString:str4 attributes:dictAttr4];
    [attributedString appendAttributedString:attr4];
    
    

    NSString *str51 = @"\n设置删除线为细单实线,颜色为红色";
    NSDictionary *dictAttr51 = @{
                                 NSStrikethroughStyleAttributeName:@(NSUnderlineStyleDouble),
                                 NSStrikethroughColorAttributeName:[UIColor redColor]
                                 
                                 };
    NSAttributedString *attr51 = [[NSAttributedString alloc]initWithString:str51 attributes:dictAttr51];
    
    [attributedString appendAttributedString:attr51];

    
    
    
    NSString *str52 = @"\n设置删除线为粗单实线,颜色为红色";
    NSDictionary *dictAttr52 = @{
                                 NSStrikethroughStyleAttributeName:@(NSUnderlineStyleThick),
                                 NSStrikethroughColorAttributeName:[UIColor redColor]
                                 };
    NSAttributedString *attr52 = [[NSAttributedString alloc]initWithString:str52 attributes:dictAttr52];
    [attributedString appendAttributedString:attr52];
    
    
    NSString *str53 = @"\n设置删除线为细单实线,颜色为红色";
    NSDictionary *dictAttr53 = @{
                                 NSStrikethroughStyleAttributeName:@(NSUnderlineStyleDouble),
                                 NSStrikethroughColorAttributeName:[UIColor redColor]
                                 };
    NSAttributedString *attr53 = [[NSAttributedString alloc]initWithString:str53 attributes:dictAttr53];
    [attributedString appendAttributedString:attr53];

    
    
    
    
    NSString *str6 = @"\n设置笔画宽度和填充颜色";
    NSDictionary *dictAttr6 = @{
                                NSStrokeWidthAttributeName:@(4),
                                NSStrokeColorAttributeName:[UIColor greenColor]
                                };
    NSAttributedString *attr6 = [[NSAttributedString alloc]initWithString:str6 attributes:dictAttr6];
    [attributedString appendAttributedString:attr6];

    
    
    //设置文本附件，取值为NSTextAttachment对象，常用于文字的图文混排
    NSTextAttachment *textAttachment = [[NSTextAttachment alloc]init];
    textAttachment.image = [UIImage imageNamed:@"timg.jpg"];
    textAttachment.bounds = CGRectMake(0, 0, 24, 24);
    NSAttributedString *attachmentString = [NSAttributedString attributedStringWithAttachment:textAttachment];
    
    
    NSString *str9 = @"\n文字的图文混排";
    NSMutableAttributedString *attr9 = [[NSMutableAttributedString alloc]initWithString:str9];
    
    [attr9 insertAttributedString:attachmentString atIndex:3];
    
    [attr9 insertAttributedString:attachmentString atIndex:5];
    
    [attr9 insertAttributedString:attachmentString atIndex:str9.length];
    
    
    [attributedString appendAttributedString:attr9];

    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 0)];
    
    //自动换行
    label.numberOfLines = 0;
    //设置label的文本
    label.attributedText = attributedString;
    //label高度自适应
    [label sizeToFit];
    
    [self.view addSubview:label];
    
    
    label.center = self.view.center;

}


@end
