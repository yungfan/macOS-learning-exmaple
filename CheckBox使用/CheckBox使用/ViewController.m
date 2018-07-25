//
//  ViewController.m
//  CheckBox使用
//
//  Created by student on 2018/4/9.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+Log.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    self.array = [NSMutableArray array];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)checkboxAction:(id)sender {
    
    NSButton *checkBox = (NSButton *)sender;
    
    //NSLog(@"%ld", (long)checkBox.state);
    
    
    if (checkBox.state == 1 ) {
        
        //NSLog(@"用户选中了%@", checkBox.title);
        
        [self.array addObject:checkBox.title];
        
        
    }
    
    else{
    
        //NSLog(@"用户取消了%@", checkBox.title);
        
        [self.array removeObject:checkBox.title];
    
    }
    
    NSLog(@"%@", self.array);
    
    if (self.array.count > 0) {
        
        
        //上传用户数据
    }
    
    else{
        
        NSLog(@"至少选择一项");
    
    
    }
}
@end
