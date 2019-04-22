//
//  ViewController.m
//  MovingballDemo
//
//  Created by JETS Mobile Lab-7 on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property Boolean flag;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _ball.layer.cornerRadius=25;
    _ball.layer.borderColor=[UIColor blackColor].CGColor;
    _ball.layer.borderWidth=1;
    
    _animator=[[UIDynamicAnimator alloc]initWithReferenceView:self.view ];
    [self animation];
    _flag=false;
    
}
-(void)animation
{
    UIGravityBehavior *gravity=[[UIGravityBehavior alloc]initWithItems:@[_ball]];
    [_animator addBehavior:gravity];
    
    UICollisionBehavior *collision=[[UICollisionBehavior alloc] initWithItems:@[_ball]];
    collision.collisionDelegate=self;
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    [_animator addBehavior:collision];
    
    UIDynamicItemBehavior *item=[[UIDynamicItemBehavior alloc]initWithItems:@[_ball]];
    item.elasticity=0.75;
    item.resistance=1;
    [_animator addBehavior:item];
    
}
-(void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier
{
    if(!_flag)
    {
    _ball.layer.backgroundColor=[UIColor redColor].CGColor;
        _flag=true;
    }
    else{
        _ball.layer.backgroundColor=[UIColor blackColor].CGColor;
        _flag=false;
    }
}


@end
