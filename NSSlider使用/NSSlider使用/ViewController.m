//
//  ViewController.m
//  NSSlider使用
//
//  Created by student on 2018/5/2.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)slide:(NSSlider *)sender {
    
    NSLog(@"%f,%f,%f", sender.maxValue, sender.minValue, sender.floatValue);
    
    //总长 100 当前值0～100之间变化
    
    //一部电影时长为12345 s
    double totalTime = 12345;
    
    double current =  sender.floatValue * totalTime / sender.maxValue ;
    
    self.playBtn.title = [NSString stringWithFormat:@"当前播放位置:%f", current];
    
    
}


- (IBAction)play:(id)sender {
    
    NSTimer *myTimer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop]addTimer:myTimer forMode:NSDefaultRunLoopMode];
    
    self.timer  = myTimer;
}

-(void)timerFired{
    
    self.slider.floatValue += 2.0;
    
    if (self.slider.floatValue >100.0) {
        
        [self.timer invalidate];
        
        self.timer = nil;
        
    }
    
}
@end
