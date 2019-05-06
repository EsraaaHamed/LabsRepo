//
//  ViewController.m
//  RetainCycleDemo
//
//  Created by Esraa Hassan on 5/1/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "ParentClass.h"
#import "ChildClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ParentClass * parentobj=[[ParentClass alloc]init];
    ChildClass * childobj=[[ChildClass alloc]init];
    parentobj.child=childobj;
    childobj.parent=parentobj;

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
