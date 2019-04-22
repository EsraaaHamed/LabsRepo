//
//  ViewController.h
//  ToolBarDemo
//
//  Created by JETS Mobile Lab-7 on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
- (IBAction)alertClicked:(UIBarButtonItem *)sender;

- (IBAction)imageClicked:(UIBarButtonItem *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

