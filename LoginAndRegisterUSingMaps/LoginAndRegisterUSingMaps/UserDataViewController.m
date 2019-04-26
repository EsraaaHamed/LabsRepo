//
//  UserDataViewController.m
//  LoginAndRegisterUSingMaps
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "UserDataViewController.h"

@interface UserDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *imagelabel;
@property (weak, nonatomic) IBOutlet UILabel *phonelabel;
@property (weak, nonatomic) IBOutlet UILabel *namelabel;
@property (weak, nonatomic) IBOutlet UILabel *emaillabel;
@property (weak, nonatomic) IBOutlet UILabel *agelabel;
@property (weak, nonatomic) IBOutlet UILabel *langlabel;
@property (weak, nonatomic) IBOutlet UILabel *latlabel;

@end

@implementation UserDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _userData=[NSUserDefaults standardUserDefaults];
    [_phonelabel setText:[_userData objectForKey:@"phone"]];
    [_namelabel setText:[_userData objectForKey:@"name"]];
    [_emaillabel setText:[_userData objectForKey:@"email"]];
    [_agelabel setText:[_userData objectForKey:@"age"]];
    [_imagelabel setText:[_userData objectForKey:@"img"]];
    [_langlabel setText:[_userData objectForKey:@"longtitude"]];
    [_latlabel setText:[_userData objectForKey:@"langtitude"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
