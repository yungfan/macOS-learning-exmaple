//
//  ViewController.h
//  综合小案例-注册
//
//  Created by student on 2018/4/11.
//  Copyright © 2018年 student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *username;
@property (weak) IBOutlet NSSecureTextField *password;
@property (weak) IBOutlet NSSecureTextField *repassword;

- (IBAction)sexSelector:(NSButton *)sender;

- (IBAction)interestSelector:(NSButton *)sender;

- (IBAction)rigiste:(NSButton *)sender;

- (IBAction)cancel:(NSButton *)sender;



@property(copy, nonatomic) NSString * sex;

@property(strong, nonatomic) NSMutableArray *interests;

@end

