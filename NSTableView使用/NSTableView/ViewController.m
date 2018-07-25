//
//  ViewController.m
//  NSTableView
//
//  Created by student on 2018/5/23.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = @[
                    @{@"stuno":@"1111111",@"stuname":@"john",@"stugrade":@"90"},
                    @{@"stuno":@"2222222",@"stuname":@"mary",@"stugrade":@"98"},
                    @{@"stuno":@"3333333",@"stuname":@"park",@"stugrade":@"97"},
                    @{@"stuno":@"4444444",@"stuname":@"Daba",@"stugrade":@"95"}
                ];

    
    self.tableView.doubleAction = @selector(doubleAction:);
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{

    return self.data.count;

}

//TableView必须是Cell-Based

-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{


    //先拿到一行的数据
    NSDictionary *dic = [self.data objectAtIndex:row];
    
    //通过列标识 将行中的数据与列对应 这样相当于一行一列交叉-单元格
    //数据源字典中的key和列的identifier一致
    NSString *data = [dic valueForKey:tableColumn.identifier];

    //将单元格的值返回
    return data;

}

//单击事件
-(void)tableViewSelectionDidChange:(NSNotification *)notification{
    
    
    NSAlert *alert = [[NSAlert alloc]init];

    NSInteger row = [notification.object selectedRow];
    
    if (row >= self.data.count) {
        
        
         alert.messageText = @"您选中的行没有数据";
        
    }
    
    else{
    
        NSDictionary *dic = [self.data objectAtIndex:row];

        alert.messageText = [NSString stringWithFormat:@"学号：%@，姓名：%@，成绩：%@", dic[@"stuno"], dic[@"stuname"], dic[@"stugrade"]];
    
    
    }
    
    [alert runModal];

}


//双击事件
- (void)doubleAction:(id)sender {
    
    NSLog(@"doubleAction");
    
}
@end
