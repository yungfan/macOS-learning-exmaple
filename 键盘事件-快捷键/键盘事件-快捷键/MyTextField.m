//
//  MyTextField.m
//  键盘事件-快捷键
//
//  Created by student on 2018/6/20.
//  Copyright © 2018年 student. All rights reserved.
//

#import "MyTextField.h"

@implementation MyTextField

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

//快捷键 实现方法
-(BOOL)performKeyEquivalent:(NSEvent *)event{
    
    NSString *code = event.characters;
    
    NSLog(@"%@", code);
    
    
    if ([code isEqualToString:@"l"]) {
        
        
        NSString *str = self.stringValue;
        
        str = [str stringByAppendingString:@"我是一名优秀的大学生"];
        
        //处理快捷键的逻辑
        self.stringValue = str;
        
        return YES;
    }
    
    
    return NO;
}



@end
