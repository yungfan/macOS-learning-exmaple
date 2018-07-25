//
//  ViewController.m
//  NSTabView的使用
//
//  Created by student on 2018/5/14.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


-(void)tabView:(NSTabView *)tabView didSelectTabViewItem:(NSTabViewItem *)tabViewItem{
    
    //id转NSNumber
    NSNumber *index = tabViewItem.identifier;
    
    NSLog(@"%@", tabViewItem.label);
    
    NSTextField *label = nil;


    switch ([index intValue]) {
            
        case 1:
         
            label = [self change];
            
            label.stringValue = tabViewItem.label;
            
            //添加到NSTabViewItem的view中
            [tabViewItem.view addSubview:label];
            
    
            break;
        case 2:
            
            label = [self change];
            
            label.stringValue = tabViewItem.label;
            
            [tabViewItem.view addSubview:label];
            
           
            break;
        case 3:
            
            label = [self change];
            
            label.stringValue = tabViewItem.label;
            
            [tabViewItem.view addSubview:label];
            
            break;
            
        default:
            break;
    }
    
    
    
}

-(NSTextField *)change{

    NSTextField *label = [[ NSTextField alloc]initWithFrame:NSMakeRect(10,10,80,20)];
   
    [label setBezeled:NO];
    [label setDrawsBackground:NO];
    [label setEditable:NO];
    
    
    label.backgroundColor = [NSColor redColor];
    
    return label;


}

@end
