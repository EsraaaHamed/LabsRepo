//
//  SecondViewController.m
//  TabBarDemo
//
//  Created by JETS Mobile Lab-7 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondViewController.h"
#import "ThireViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)showViewBtn:(UIButton *)sender
{
    ThireViewController* thirdView=[self.storyboard instantiateViewControllerWithIdentifier:@"thirdView"];
    [self.navigationController pushViewController:thirdView animated:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
