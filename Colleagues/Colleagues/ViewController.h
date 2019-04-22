//
//  ViewController.h
//  Colleagues
//
//  Created by JETS Mobile Lab-7 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int count;
    NSArray *friendArray;
}
@property (weak, nonatomic) IBOutlet UILabel *friendName;

- (IBAction)nextFriendBtn:(UIButton *)sender;
- (IBAction)previousFriendBrn:(UIButton *)sender;

@end

