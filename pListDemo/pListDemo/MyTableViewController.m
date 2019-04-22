//
//  MyTableViewController.m
//  pListDemo
//
//  Created by JETS Mobile Lab-7 on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController{
    NSArray * titles;
    NSArray *subtitles;
    NSArray *images;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *path=[[NSBundle mainBundle]
            pathForResource:@"Property List" ofType:@"plist"];
    NSDictionary *dict=[[NSDictionary alloc] initWithContentsOfFile:path];
    titles=[dict objectForKey:@"title"];
    subtitles=[dict objectForKey:@"subtitle"];
    images=[dict objectForKey:@"images"];
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
