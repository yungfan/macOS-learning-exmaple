//
//  ViewController.m
//  NSPopover
//
//  Created by student on 2018/5/18.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    self.view.wantsLayer = YES;
    
    self.view.layer.backgroundColor = [NSColor redColor].CGColor;
    
    //1.创建气泡
    NSPopover *popver = [[NSPopover alloc]init];
    
    //2.创建显示的内容
    NSViewController *vc = [[NSStoryboard storyboardWithName:@"Main" bundle:nil]instantiateControllerWithIdentifier:@"abc"];
    
    vc.view.wantsLayer = YES;
    
    vc.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
    
    //3.将气泡与内容关联
    popver.contentViewController = vc;
    
    //4.气泡的关闭行为
    popver.behavior = NSPopoverBehaviorSemitransient;
    
    self.popover = popver;
    

}


- (IBAction)showPopover:(NSButton *)sender {
    
    //4.显示气泡
    
    //positioningRect:NSPopover显示时参考矩形,一般是positioningView的bounds
    //positioningView:NSPopover显示时参考点的view
    //preferredEdge:显示的位置参考的边(左右上下,4个位置)  NSRectEdge
    
    //这个气泡弹出的参考坐标系 是和iOS中的一致
    //以sender的左上角为原点，以iOS中的坐标参考系 让rect与view重合 然后由第三个参数决定在rect的哪个方向
    
    //最佳实践 参考的是哪个view 那么第一个参数就传他的bounds
    [self.popover showRelativeToRect:sender.bounds ofView:sender preferredEdge:NSRectEdgeMaxX];
    
}
@end
