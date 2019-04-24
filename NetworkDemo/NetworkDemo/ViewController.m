//
//  ViewController.m
//  NetworkDemo
//
//  Created by JETS Mobile Lab-7 on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
- (IBAction)asyncBtn:(UIButton *)sender;
- (IBAction)syncBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;


@end

@implementation ViewController
{
    NSMutableData * dataRecieved;
    NSURL *url;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer * rect=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next)];
    rect.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:rect];
}
-(void) next
{
    printf("next");
    SecondViewController *secondview=[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [secondview setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:secondview animated:YES completion:nil];
}


- (IBAction)asyncBtn:(UIButton *)sender {
    url=[NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us"];
    NSString *str=[[NSString alloc]initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSURLRequest *request= [[NSURLRequest alloc]initWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
    
    
    //[_txtView setText:str];
}
- (IBAction)syncBtn:(UIButton *)sender {
   url=[NSURL URLWithString:@"https://maktoob.yahoo.com/?p=us"];
    NSString *str=[[NSString alloc]initWithContentsOfURL:url usedEncoding:NSUTF8StringEncoding error:nil];
   
    [_webView loadHTMLString:str baseURL:url];
    
}
-(void) connection:(NSURLConnection *)connection didReceiveResponse:(nonnull NSURLResponse *)response
{
    dataRecieved=[NSMutableData new];
}
-(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    printf("error");
}
-(void) connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    printf("didfinish");
    NSString * convertedStr =[[NSString alloc] initWithData:dataRecieved encoding:NSUTF8StringEncoding];

    [_webView loadHTMLString:convertedStr baseURL:url];
    
}
-(void)connection:(NSURLConnection *) connection didReceiveData:(nonnull NSData *)data
{
    printf("\ndidRecived");
    [dataRecieved appendData:data];
    
    
}

@end

