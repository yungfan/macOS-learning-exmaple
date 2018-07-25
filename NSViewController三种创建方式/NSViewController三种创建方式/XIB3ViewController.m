//
//  XIB3ViewController.m
//  NSViewController三种创建方式
//
//  Created by student on 2018/6/4.
//  Copyright © 2018年 student. All rights reserved.
//

#import "XIB3ViewController.h"

@interface XIB3ViewController ()

@end

@implementation XIB3ViewController

-(instancetype)init{

    if (self = [super init]) {
        
        NSArray *array;
       
       // 将一个XIB初始化为一个NSView的方法有两种
       // BOOL isSuccess  = [[NSBundle mainBundle]loadNibNamed:@"XIB3View" owner:self topLevelObjects:&array];
        
        BOOL isSuccess  =  [[[NSNib alloc]initWithNibNamed:@"XIB3View" bundle:nil] instantiateWithOwner:self topLevelObjects:&array];
        
        if (isSuccess) {
            
            for (int i = 0; i < array.count; i++) {
                
                NSLog(@"%@", array);
            
                //array中有两个值 一个是NSView，一个是NSApplication
                if ([array[i] isKindOfClass:[NSView class]]) {
                    
                    self.view = array[i];
                }
                
            }
            
        }
        
    }

    return self;

}

- (void)viewDidLoad {
    [super viewDidLoad];

}

@end
