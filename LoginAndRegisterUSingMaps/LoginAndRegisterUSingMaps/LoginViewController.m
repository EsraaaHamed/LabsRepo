//
//  LoginViewController.m
//  LoginAndRegisterUSingMaps
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "LoginViewController.h"
#import "UserDataViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberPhone;
- (IBAction)loginBtn:(UIButton *)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _loginUserDefaults=[NSUserDefaults standardUserDefaults];
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

- (IBAction)loginBtn:(UIButton *)sender {
    NSString* phone=[_loginUserDefaults objectForKey:@"phone"];
    NSString* userPhone=[_numberPhone text];
    
    if([phone isEqualToString:[_numberPhone text]])
    {
        printf("success");
         UserDataViewController *userDataView=[self.storyboard instantiateViewControllerWithIdentifier:@"dataview"];
        userDataView.userData=_loginUserDefaults;
         [self.navigationController pushViewController:userDataView animated:YES];
    }
    else{
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"fail"
                                     message:@"this is invalid phone"
                                     preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* ok = [UIAlertAction
                             actionWithTitle:@"Ok"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action) {
                                 //Handle your yes please button action here
                                 
                             }];
        UIAlertAction* tryAgain = [UIAlertAction
                                   actionWithTitle:@"Try Again"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction * action) {
                                       [_numberPhone setText:@""];
                                   }];
        [alert addAction:ok];
        [alert addAction:tryAgain];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
}
@end
