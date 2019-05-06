//
//  ParentClass.h
//  RetainCycleDemo
//
//  Created by Esraa Hassan on 5/1/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChildClass.h"
@class ChildClass;
@interface ParentClass : NSObject
@property (strong,nonatomic)ChildClass * child;
@end
