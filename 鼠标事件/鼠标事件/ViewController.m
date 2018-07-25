//
//  ViewController.m
//  鼠标事件
//
//  Created by student on 2018/6/13.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property (assign, nonatomic) CGPoint previous;

@property (nonatomic,strong) NSMutableArray *array;;

@property (weak) IBOutlet NSSlider *slider;

@property (assign, nonatomic) CGFloat sliderCurrent;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = [NSMutableArray array];
}


-(void)mouseDown:(NSEvent *)event{

    NSLog(@"mouseDown");
    
    //想判断一下是否是双击事件
    
    if (event.clickCount > 1) {
        
        NSLog(@"双击事件");
        
    }
    
    self.previous = [event locationInWindow];
    

}


//鼠标右击是不会调用该方法的
-(void)mouseDragged:(NSEvent *)event{
    
    
    NSLog(@"%lu",(unsigned long)event.type);
    
    NSLog(@"%@", NSStringFromPoint([event locationInWindow]));
    

    NSLog(@"mouseDragged");
    
    
    //如何判断用户拖拽的方向？
    CGPoint current =  [event locationInWindow];
    
    //获取水平方向的x值的增量
    CGFloat deltaX = fabs(self.previous.x - current.x);
    //获取水平方向的y值的增量
    CGFloat deltaY = fabs(self.previous.y - current.y);
    
    CGFloat h = self.view.bounds.size.height;
    
    CGFloat rate = deltaY / h;
    
    //变化的值
    CGFloat deltaValue = self.slider.maxValue * rate;
    
    if (current.y < self.previous.y && deltaX < deltaY){
  
    
    }
    
    if (current.y > self.previous.y && deltaX < deltaY){
        
        self.slider.floatValue = deltaValue;
        
    }
    
    NSLog(@"%f", self.slider.floatValue);
}

-(void)mouseUp:(NSEvent *)event{
    
     NSLog(@"mouseUp");
    
     CGPoint current =  [event locationInWindow];
    
     //获取水平方向的x值的增量
     CGFloat deltaX = fabs(self.previous.x - current.x);
     //获取水平方向的y值的增量
     CGFloat deltaY = fabs(self.previous.y - current.y);

     //1.弹起位置的x比按下的大  2.水平方向的滑动的距离比垂直方向要大
     if (current.x > self.previous.x && deltaX > deltaY) {
        
         NSLog(@"往右");
  
         [self.array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
             
             NSButton *btn = (NSButton *)obj;
             
             [btn removeFromSuperview];
             
             
         }];
         
         [self.array removeAllObjects];
     }
    
     if (current.x < self.previous.x && deltaX > deltaY){
         
         NSLog(@"往左");
         
         NSButton *btn = [NSButton buttonWithTitle:@"删除" target:nil action:nil];
         
         btn.frame = NSRectFromCGRect(CGRectMake(self.previous.x, self.previous.y, 100, 40));
         
         [self.view addSubview:btn];
         
         [self.array addObject:btn];
         
     }
    
     if (current.y < self.previous.y && deltaX < deltaY){
         
         NSLog(@"往下");
         
     }
    
     if (current.y > self.previous.y && deltaX < deltaY){
         
         NSLog(@"往上");
         
     }


}

-(void)rightMouseUp:(NSEvent *)event{
    
     NSLog(@"rightMouseUp");


}

-(void)rightMouseDown:(NSEvent *)event{

     NSLog(@"rightMouseDown");
}


@end
