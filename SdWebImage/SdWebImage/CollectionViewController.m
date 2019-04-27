//
//  CollectionViewController.m
//  SdWebImage
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "CollectionViewController.h"
#import "CellClassCollectionViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface CollectionViewController ()

@end

@implementation CollectionViewController
{
     NSMutableData * dataRecieved;
    NSMutableArray * imagesArray;
}

static NSString * const reuseIdentifier = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString=@"https://api.androidhive.info/json/movies.json";
    
    
    NSURL *url=[NSURL URLWithString:urlString];
    
    /* NSString *str=[[NSString alloc]initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];*/
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];

    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    /*[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];*/
    
    // Do any additional setup after loading the view.
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [imagesArray count];
    }

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CellClassCollectionViewCell *cell = (CellClassCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    [cell.myImageView sd_setImageWithURL:[NSURL URLWithString:[imagesArray objectAtIndex:indexPath.row]]
                  placeholderImage:[UIImage imageNamed:@"female.jpg"]];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/
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
    NSArray *arrayOfimages = [NSJSONSerialization JSONObjectWithData:dataRecieved options:NSJSONReadingAllowFragments error:nil];
    for(int i=0; i<[arrayOfimages count]; i++)
    {
        NSDictionary *dict=[arrayOfimages objectAtIndex:i];
        NSString* imgUrl=[dict objectForKey:@"image"];
        [imagesArray addObject:imgUrl];
    }
    
}
-(void)connection:(NSURLConnection *) connection didReceiveData:(nonnull NSData *)data
{
    printf("\ndidRecived");
    [dataRecieved appendData:data];
    
    
}


@end
