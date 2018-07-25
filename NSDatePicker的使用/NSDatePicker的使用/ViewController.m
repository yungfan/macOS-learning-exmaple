//
//  ViewController.m
//  NSDatePicker的使用
//
//  Created by student on 2018/5/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import "ViewController.h"
#import "CommonTools.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)dateValue:(NSButton *)sender {

    sender.title = [NSString stringWithFormat:@"picker1:%@,picker3:%@",[CommonTools formmatDate:self.picker1.dateValue], [CommonTools formmatDate:self.picker3.dateValue]];

    
}

- (IBAction)dateChange:(NSDatePicker *)sender {
    
    NSLog(@"%@",[CommonTools formmatDate:sender.dateValue]);
}

- (IBAction)calendarValue:(NSDatePicker *)sender {
    
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateComponents *components =  [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday fromDate:sender.dateValue];

    NSLog(@"%ld年%ld月%ld日%@", (long)components.year, (long)components.month, (long)components.day, [CommonTools convertWeekday:(long)components.weekday]);

}






@end
