//
//  SecondViewController.m
//  GeastureDemo
//
//  Created by JETS Mobile Lab-7 on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
- (IBAction)dismissBtn:(UIButton *)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UISwipeGestureRecognizer * rect=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(dismissOperation)];
    rect.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:rect];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)dismissOperation
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)dismissBtn:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
