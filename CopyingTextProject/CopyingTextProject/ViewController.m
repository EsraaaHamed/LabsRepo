//
//  ViewController.m
//  CopyingTextProject
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
    _viewLabel.text=@"type here";
}


- (IBAction)showBtn:(UIButton *)sender {
    _viewLabel.text=_inputTF.text;
}
@end
