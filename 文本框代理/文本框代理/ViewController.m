//
//  ViewController.m
//  文本框代理
//
//  Created by student on 2018/3/23.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    //self.tf.delegate = self;
}


-(void)controlTextDidBeginEditing:(NSNotification *)obj{
    
    //NSLog(@"%s", __func__);


}

-(void)controlTextDidEndEditing:(NSNotification *)obj{
    
     //NSLog(@"%s", __func__);

}


//通过obj这个参数可以捕捉到用户输入的内容
//obj是一个通知类型，通过obj.object可以获取到通知发出的那个对象
-(void)controlTextDidChange:(NSNotification *)obj{
    
     NSTextField *tf =  obj.object;
    
     NSLog(@"%@", tf.stringValue);


}



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}




- (IBAction)click:(id)sender {
    
    
    NSLog(@"%@", self.tv.string);
   
}
@end
