//
//  ViewController.m
//  NSProgressIndicator使用
//
//  Created by student on 2018/5/7.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
//    1、参数repeats是指定是否循环执行，YES将循环，NO将只执行一次。
//    
//    2、timerWithTimeInterval这两个类方法创建出来的对象如果不用 addTimer: forMode方法手动加入主循环池中，将不会循环执行。并且如果不手动调用fair，则定时器不会启动。
//    
//    3、scheduledTimerWithTimeInterval这两个方法不需要手动调用fair，会自动执行，并且自动加入主循环池。
    
    //自动执行某个任务的方法  iOS 10.0 Mac OS 10.12以后
    _timer = [NSTimer timerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        
         self.barPI.doubleValue += 10;
         self.circlePI.doubleValue += 10;
        
         if(self.barPI.doubleValue >= 100.0){
        
            [_timer invalidate];
            
            _timer = nil;
        
         }
        
    }];

    
   [[NSRunLoop currentRunLoop]addTimer:self.timer forMode:NSDefaultRunLoopMode];
}



- (IBAction)loadData:(NSButtonCell *)sender {
    
     [self.inCirclePI startAnimation:nil];
    
     [self.inBarPI startAnimation:nil];
    
   
}

- (IBAction)finishLoad:(NSButton *)sender {
    
     [self.inBarPI stopAnimation:nil];
    
     [self.inCirclePI stopAnimation:nil];
}
@end
