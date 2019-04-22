//
//  ViewController.h
//  Day2Demo
//
//  Created by JETS Mobile Lab-7 on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyProtocol.h"
@interface ViewController : UIViewController <MyProtocol>
@property (weak, nonatomic) IBOutlet UITextField *clearTxt;
- (IBAction)gotoSecondView:(UIButton *)sender;
@end

