//
//  ViewController.m
//  NSComboBox使用
//
//  Created by student on 2018/4/23.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController


#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


#pragma mark - 懒加载
-(NSMutableArray *)data{

    if (_data == nil) {
        
        
        _data = [NSMutableArray arrayWithObjects:@"安徽省",@"河南省",@"江苏省",@"山东省",@"福建省",@"海南省",@"河北省", nil];
        
    }


    return _data;
}


#pragma mark - 数据源方法

-(NSInteger)numberOfItemsInComboBox:(NSComboBox *)comboBox{

    return self.data.count;
    

}

-(id)comboBox:(NSComboBox *)comboBox objectValueForItemAtIndex:(NSInteger)index{

    return [self.data objectAtIndex:index];


}


#pragma mark - 代理方法

-(void)comboBoxSelectionIsChanging:(NSNotification *)notification{

    NSLog(@"%s", __func__);

}

-(void)comboBoxSelectionDidChange:(NSNotification *)notification{

    NSLog(@"%s", __func__);

}




- (IBAction)selectProvince:(NSComboBox *)sender {
    
    NSLog(@"%ld, %@", sender.indexOfSelectedItem, sender.stringValue);
}



@end
