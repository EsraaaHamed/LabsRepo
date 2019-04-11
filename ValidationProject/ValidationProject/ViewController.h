//
//  ViewController.h
//  ValidationProject
//
//  Created by JETS Mobile Lab-7 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)checkBtn:()sender;
@property (weak, nonatomic) IBOutlet UILabel *validationTV;
- (IBAction)checkNumBtn:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *inputTF;

@end

