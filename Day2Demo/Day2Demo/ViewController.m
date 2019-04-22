//
//  ViewController.m
//  Day2Demo
//
//  Created by JETS Mobile Lab-7 on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)gotoSecondView:(UIButton *)sender {
    SecondViewController * secondView=[self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    NSString *textFieldInput=_clearTxt.text;
    NSString *toData=textFieldInput;
    secondView.comingData=toData;
    secondView.myProtocol=self;
    
    [self.navigationController pushViewController:secondView animated:NO];
}
-(void)nameText{
    _clearTxt.text=@"";
}



@end
