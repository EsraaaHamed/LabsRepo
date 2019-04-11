//
//  ViewController.m
//  ValidationProject
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
}


- (IBAction)checkBtn:(UIButton *)sender {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    NSNumber *number = [formatter numberFromString:_inputTF.text];
    
    if (number) {
        _validationTV.text=@"you entered a num";
    } else {
        _validationTV.text=@"you entered a string";
    }
}
- (IBAction)checkNumBtn:(UIButton *)sender {
}
@end
