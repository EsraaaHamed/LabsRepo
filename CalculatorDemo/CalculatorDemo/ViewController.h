//
//  ViewController.h
//  CalculatorDemo
//
//  Created by JETS Mobile Lab-7 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)addBtn:(UIButton *)sender;
- (IBAction)subtractBtn:(UIButton *)sender;
- (IBAction)multiplyBtn:(UIButton *)sender;
- (IBAction)divideBtn:(UIButton *)sender;
-(Boolean) validation :(NSString*)x : (NSString*)y;
@property (weak, nonatomic) IBOutlet UITextField *firstNumTf;
@property (weak, nonatomic) IBOutlet UILabel *resultTV;
@property (weak, nonatomic) IBOutlet UITextField *secondTf;

@end

