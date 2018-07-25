//
//  ViewController.m
//  NSSegmentedControl案例
//
//  Created by student on 2018/4/18.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    self.dog.wantsLayer = YES;
    
    self.dog.layer.cornerRadius = 45.0;
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)changeFlower:(NSSegmentedControl *)sender {
    
    NSInteger index =  sender.selectedSegment;
    
    
    if (index == 0) {
        
        self.flower.image = [NSImage imageNamed:@"red"];
    }
    
    else if (index == 1) {
        
        self.flower.image = [NSImage imageNamed:@"yellow"];
    }
    
    else {
        
        self.flower.image = [NSImage imageNamed:@"purple"];
    }
    
}
@end
