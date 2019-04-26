//
//  ViewController.m
//  FriendAppCustomCell
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *myTabelView;

@end

@implementation ViewController
{

    NSArray * firstLabelArray;
    NSArray * secondLabelArray;
    NSArray * imagesArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    firstLabelArray=@[@"one",@"two",@"three"];
    secondLabelArray=@[@"male",@"female",@"male"];
    imagesArray=@[@"male.png",@"female.jpg",@"male.png"];
    
    [_myTabelView setDelegate:self];
    [_myTabelView setDataSource:self];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return firstLabelArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    UILabel * labelOne=[cell viewWithTag:1];
    UILabel * labelTwo=[cell viewWithTag:3];
    UIImageView * rowImage= [cell viewWithTag:2];
    
    labelOne.text=[firstLabelArray objectAtIndex:indexPath.row];
    labelTwo.text=[secondLabelArray objectAtIndex:indexPath.row];
    rowImage.image=[UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
