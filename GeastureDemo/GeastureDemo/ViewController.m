//
//  ViewController.m
//  GeastureDemo
//
//  Created by JETS Mobile Lab-7 on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *viewLabel;
@property (weak, nonatomic) IBOutlet UIView *subView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer * rect=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next)];
    rect.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:rect];
    
    _myBlock1=^int (int a,int b)
    {
        printf("Block");
        return a*b;
    };
    printf("%d",_myBlock1(2,5));
    
}
-(void) next
{
    printf("next");
    SecondViewController *secondview=[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [secondview setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:secondview animated:YES completion:nil];
}


@end
