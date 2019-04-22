//
//  ViewController.h
//  HelloApp
//
//  Created by JETS Mobile Lab-7 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic)
IBOutlet UILabel *myLabel;
- (IBAction)pressesBtn:(UIButton *)sender;

@end

