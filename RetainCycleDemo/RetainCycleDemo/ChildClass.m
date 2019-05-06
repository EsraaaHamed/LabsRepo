//
//  ChildClass.m
//  RetainCycleDemo
//
//  Created by Esraa Hassan on 5/1/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ChildClass.h"

@implementation ChildClass
-(void)dealloc{

    NSLog(@"dealloc child");
}

@end
