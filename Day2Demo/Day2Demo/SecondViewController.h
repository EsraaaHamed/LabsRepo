//
//  SecondViewController.h
//  Day2Demo
//
//  Created by JETS Mobile Lab-7 on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property NSString *comingData;
@property id<MyProtocol> myProtocol;
@end

NS_ASSUME_NONNULL_END
