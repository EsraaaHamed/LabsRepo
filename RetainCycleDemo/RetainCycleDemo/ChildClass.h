//
//  ChildClass.h
//  RetainCycleDemo
//
//  Created by Esraa Hassan on 5/1/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParentClass.h"
@class ParentClass;
@interface ChildClass : NSObject
@property (strong,nonatomic)ParentClass * parent;

@end
