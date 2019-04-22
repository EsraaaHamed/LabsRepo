//
//  ViewController.m
//  ToolBarDemo
//
//  Created by JETS Mobile Lab-7 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIAlertView *alert1;
    UIAlertView *alert2;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(alertView==alert1)
    {
    switch (buttonIndex) {
        case 0:
        {
            
            NSString* username=[alertView textFieldAtIndex:0].text;
            printf("ok");
            NSString* password=[alertView textFieldAtIndex:1].text;
                        printf("username: %s , pass %s \n",[username UTF8String],[password UTF8String]);

            break;
        }
        case 1:
        {
            printf("cancel");
            break;
            
        }
        default:
            break;
    }
    }
    else
    {
        switch (buttonIndex) {
            case 0:
            {
                
                NSString* username=[alertView textFieldAtIndex:0].text;
                printf("ok2");
                NSString* password=[alertView textFieldAtIndex:1].text;
                printf("username: %s , pass %s \n",[username UTF8String],[password UTF8String]);
                break;
                
                
            }
            case 1:
            {
                printf("cancel2");
                break;
                
            }
            default:
                break;
        }
    }
}


- (IBAction)alertClicked:(UIBarButtonItem *)sender {
    alert1 =[[UIAlertView alloc]initWithTitle:(@"alert") message:@"Hello jets" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok",@"Cancel", nil];
    alert1.alertViewStyle =UIAlertViewStyleLoginAndPasswordInput;
    [alert1 show];
    printf("alert clicked");
    
}

- (IBAction)imageClicked:(UIBarButtonItem *)sender {
   /* alert2 =[[UIAlertView alloc]initWithTitle:(@"alert") message:@"Hello jets" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ok",@"Cancel", nil];
    alert2.alertViewStyle =UIAlertViewStyleLoginAndPasswordInput;
    [alert2 show];
    printf("image clicked");
    */
    UIImage *image= [UIImage imageNamed:@"Cartoonpng.png"];
    [_img setImage:image];
}
@end
