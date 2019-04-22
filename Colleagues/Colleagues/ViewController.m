//
//  ViewController.m
//  Colleagues
//
//  Created by JETS Mobile Lab-7 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    friendArray = [NSArray arrayWithObjects: @"Esraa", @"Hamed", @"Ahmed", @"Hamada",nil];
    count=-1;
}



- (IBAction)nextFriendBtn:(UIButton *)sender {
    
    if([friendArray count]-1==count)
    {
        count=-1;
    }
    count++;
    
    _friendName.text=[friendArray objectAtIndex:count];
    
    
}

- (IBAction)previousFriendBrn:(UIButton *)sender {
    
    if(count==0)
    {
        count=(int)[friendArray count];
    }
    count--;
    _friendName.text=[friendArray objectAtIndex:count];
}
@end
