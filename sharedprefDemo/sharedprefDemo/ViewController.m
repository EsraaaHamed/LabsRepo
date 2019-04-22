//
//  ViewController.m
//  sharedprefDemo
//
//  Created by JETS Mobile Lab-7 on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)getBtn:(UIButton *)sender;
- (IBAction)saveBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *inputTf;
@property (weak, nonatomic) IBOutlet UILabel *showMsg;

@end

@implementation ViewController

{
    NSUserDefaults *userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userDefaults=[NSUserDefaults standardUserDefaults];
}


- (IBAction)getBtn:(UIButton *)sender {
    NSString * str=[userDefaults objectForKey:@"name"];
    [_showMsg setText:str];
    
}

- (IBAction)saveBtn:(UIButton *)sender {
    NSString *str=[_inputTf text];
    [userDefaults setObject:str forKey:@"name"];
    [userDefaults synchronize];
    [_inputTf setText:@""];
    
}
@end
