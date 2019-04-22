//
//  ViewController.m
//  HelloApp
//
//  Created by JETS Mobile Lab-7 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myLabel.text=@"hello";

    
}
- (IBAction)pressesBtn:(UIButton *)sender
{
    _myLabel.text=@"you pressed the button";
    
}



@end
