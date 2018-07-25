//
//  ViewController.m
//  NSPopUpButton
//
//  Created by student on 2018/4/25.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //[self.popUpButton removeAllItems];
    
    NSArray *province = @[@"安徽省",@"江苏省",@"山东省",@"浙江省",@"河南省"];
    
    [self.popUpButton addItemsWithTitles:province];
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)selectProvince:(NSPopUpButton *)sender {
    
    
    NSLog(@"%ld", (long)sender.numberOfItems);
    
    NSLog(@"%ld", (long)sender.indexOfSelectedItem);
    
    NSLog(@"%@", sender.itemTitles);
    
    NSLog(@"%@", sender.titleOfSelectedItem);
    
    
}
@end
