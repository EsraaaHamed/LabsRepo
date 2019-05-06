//
//  ParentClass.m
//  RetainCycleDemo
//
//  Created by Esraa Hassan on 5/1/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ParentClass.h"

@implementation ParentClass
-(void)dealloc{
    NSLog(@"dealloc parent");
}

@end
