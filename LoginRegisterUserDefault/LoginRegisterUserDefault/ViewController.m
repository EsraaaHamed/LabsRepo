//
//  ViewController.m
//  LoginRegisterUserDefault
//
//  Created by JETS Mobile Lab-7 on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userNameTf;
@property (weak, nonatomic) IBOutlet UITextField *passwordTf;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)logined:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *showLogined;

@end

@implementation ViewController
{
    NSUserDefaults *userDefaults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userDefaults=[NSUserDefaults standardUserDefaults];
     [userDefaults setObject:@"esraa" forKey:@"username"];
    [userDefaults setObject:@"password" forKey:@"password"];
}


- (IBAction)logined:(UIButton *)sender {
    NSString* username=[_userNameTf text];
    NSString* password=[_passwordTf text];
    NSString * comingUsername=[userDefaults objectForKey:@"username"];
    NSString * comingPassword=[userDefaults objectForKey:@"password"];

    
    if([comingPassword isEqualToString:password]&&[username isEqualToString:comingUsername])
    {
        [_showLogined setText:@"Success"];
    }
    else
    {
        [_showLogined setText:@"Failed"];
    }
    
   
    
     [userDefaults synchronize];
    
}
@end
