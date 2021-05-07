//
//  ViewController.m
//  文本控件
//
//  Created by student on 2018/3/19.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    self.username.delegate = self;
    
}



// 这里的obj是一个id 是通知发出的源头
-(void)controlTextDidChange:(NSNotification *)obj{
    
    NSTextField * tf = obj.object;
    
    NSLog(@"%@", tf.stringValue);
    
    NSLog(@"%s", __func__);


}

-(void)controlTextDidBeginEditing:(NSNotification *)obj{

    NSLog(@"%s", __func__);
    
}

-(void)controlTextDidEndEditing:(NSNotification *)obj{

     NSLog(@"%s", __func__);


}


- (IBAction)logIn:(id)sender {
    
    NSString *usernameTxt = self.username.stringValue;
    
    NSString *passwordTxt = self.password.stringValue;
    
    
    NSLog(@"%@ ----- %@", usernameTxt, passwordTxt);
    
    
    
}

- (IBAction)cancel:(id)sender {
    
    self.username.stringValue = @"";
    self.password.stringValue = @"";
}
@end
