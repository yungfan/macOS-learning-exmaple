//
//  ViewController.m
//  综合小案例-注册
//
//  Created by student on 2018/4/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    _interests = [NSMutableArray array];
    
    _sex = @"男";
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)sexSelector:(NSButton *)sender {
    
    _sex = sender.title;
    
   // NSLog(@"%@", _sex);
    
}

- (IBAction)interestSelector:(NSButton *)sender {
    
    if (sender.state == 1) {
        
        [_interests addObject:sender.title];
    }
    
    else{
    
        [_interests removeObject:sender.title];
    
    }
    
    
}

- (IBAction)rigiste:(NSButton *)sender {
    
    //1.判断用户名是否为空
    if([_username.stringValue isEqualToString:@""]){
    
        NSLog(@"用户名不能为空");
        return;
    
    }
    
    
    //2.判断密码和确认密码是否为空
    if([_password.stringValue isEqualToString:@""]){
        
        NSLog(@"密码不能为空");
        return;
        
    }
    
    if([_repassword.stringValue isEqualToString:@""]){
        
        NSLog(@"确认密码不能为空");
        return;
        
    }

    
    
    //3.判断密码和确认密码是否一致
    if(![_password.stringValue isEqualToString:_repassword.stringValue]){
        
        NSLog(@"密码和确认密码不一致");
        return;
        
    }

    
    
    //4.获取用户选择的性别

    
    //5.获取用户选择的兴趣
    
    
    //6.打印所有的注册信息
    
    NSLog(@"用户名为：%@， 密码为：%@， 性别为：%@， 兴趣爱好：%@", _username.stringValue, _password.stringValue, _sex, _interests);
    
}

- (IBAction)cancel:(NSButton *)sender {
    
    _username.stringValue = @"";
    
    _password.stringValue= @"";
    
    _repassword.stringValue = @"";
    
    for (NSView *view in self.view.subviews) {
        
        if ([view isKindOfClass:NSButton.class]) {
            
            NSButton *btn = (NSButton *)view;
            
          
            if (btn.tag == 101) {
                
                btn.state = 1;
                
            }
            
            if (btn.tag == 102 || btn.tag == 103 || btn.tag == 104 || btn.tag == 105) {
                
                btn.state = 0;
                
            }
            
        }
        
    }
    
    _interests = [NSMutableArray array];
    
    _sex = @"男";
    
    
}
@end
