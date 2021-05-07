//
//  ViewController.m
//  NSSearchField使用
//
//  Created by student on 2018/3/26.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    NSActionCell *searchBtn = [[self.nsf cell] searchButtonCell];

    NSActionCell *cancelBtn = [[self.nsf cell] cancelButtonCell];
    
    
    //NSActionCell *searchBtn =  [[self.nsf cell] accessibilitySearchButton];
    
    [searchBtn setTarget:self];
    
    [cancelBtn setTarget:self];
    
    [searchBtn setAction:@selector(searchText:)];
    
    [cancelBtn setAction:@selector(cancel:)];
    
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(void)cancel:(NSActionCell *)cancelBtn{
    
    
    self.nsf.stringValue = @"";

    NSLog(@"%s", __func__);

}

-(void)searchText:(NSActionCell *)searchBtn{

    NSLog(@"%s", __func__);

}


- (IBAction)search:(id)sender {
    
    NSSearchField *sf = (NSSearchField *)sender;
    
    if (![sf.stringValue  isEqual: @""]) {
        
         NSLog(@"%@", sf.stringValue);
    }
    
}
@end
