//
//  SecondViewController.m
//  Day2Demo
//
//  Created by JETS Mobile Lab-7 on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //navigation controller da aly ms2ol 3n al view kolo
    //navigation item da ly ms2ol 3n al title w al button bs
    UIBarButtonItem *myBarButtonItem=[[UIBarButtonItem alloc]
                                      initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    [self.navigationItem setRightBarButtonItem:myBarButtonItem];
    [self.navigationItem setTitle:@"Secondd View"];
    NSString *str = @"hello ";
    str =
    _nameLabel.text=[@"Hello Ya " stringByAppendingString:_comingData];
    //_nameLabel.text=_comingData;

}
-(void)done
{
    NSLog(@"Done");
    [_myProtocol nameText];
    
    [self.navigationController popViewControllerAnimated:YES];
    
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
