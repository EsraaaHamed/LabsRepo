//
//  SecondViewController.m
//  NetworkDemo
//
//  Created by JETS Mobile Lab-7 on 4/23/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userNameTf;
- (IBAction)lognBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *numberTf;

@end

@implementation SecondViewController
{
    NSMutableData * dataRecieved;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)lognBtn:(UIButton *)sender {
    printf("login");
    NSString *username=[_userNameTf text];
    NSString *phoneNumber=[_numberTf text];
    NSString *urlString=@"http://jets.iti.gov.eg/FriendsApp/services/user/register?nae=yourName&phone=yourPhone&fbclid=IwAR0CPEfxNP_6Fk7O1bgXFLhDwbEXOLVYoF56FX6wKkSJAVkytuixfBAcArs";

    [urlString stringByReplacingOccurrencesOfString:@"yourName" withString:username];
    
    [urlString stringByReplacingOccurrencesOfString:@"yourPhone" withString:phoneNumber];
    
    
    NSURL *url=[NSURL URLWithString:urlString];
    
   /* NSString *str=[[NSString alloc]initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];*/
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
    
}
-(void) connection:(NSURLConnection *)connection didReceiveResponse:(nonnull NSURLResponse *)response
{
    
        dataRecieved=[NSMutableData new];
    

}
-(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    printf("\nerrrrrrrrror");
}
-(void) connectionDidFinishLoading:(NSURLConnection *)connection
{
      printf("\nfiniahDownloading");
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataRecieved options:NSJSONReadingAllowFragments error:nil];
    NSString * status = [dict objectForKey:@"status"];
    NSString * result = [dict objectForKey:@"result"];
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:status
                                 message:result
                                 preferredStyle:UIAlertControllerStyleAlert];
    if([status isEqualToString:@"FAILING"])
    {
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
                                       [_userNameTf setText:@""];
                                       [_numberTf setText:@""];
                                   }];
        [alert addAction:ok];
        [alert addAction:tryAgain];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    else if([status isEqualToString:@"Success"])
    {
        UIAlertAction* ok = [UIAlertAction
                             actionWithTitle:@"Ok"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action) {
                                 
                                 printf("successd");
                             }];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
-(void)connection:(NSURLConnection *) connection didReceiveData:(nonnull NSData *)data
{
    printf("\ndidRecived");
    [dataRecieved appendData:data];
    
    
}
@end
