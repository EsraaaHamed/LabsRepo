//
//  main.m
//  ClassSubKindClassDemo
//
//  Created by Esraa Hassan on 4/10/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ClassA.h"
#import "ClassB.h"
#import "MyClass.h"
int main(int argc, const char * argv[]) {
    ClassA* classA=[ClassA new];
    ClassB* classB=[ClassB new];
    MyClass* myClass=[MyClass new];
    
    if([classA isKindOfClass:[ClassA class]]==YES)
    {
        printf("classA is kind of ClassA\n");

    }
    if([classA isKindOfClass:[ClassB class]]==YES)
    {
        printf("classA is kind of ClassB\n");
        
    }
    if([classA isKindOfClass:[MyClass class]]==YES)
    {
        printf("classA is kind of MyClass\n");
        
    }
    if([classB isKindOfClass:[ClassA class]]==YES)
    {
        printf("classb is kind of ClassA\n");
        
    }
    if([classB isKindOfClass:[ClassB class]]==YES)
    {
        printf("classB is kind of ClassB\n");
        
    }
    if([classB isKindOfClass:[MyClass class]]==YES)
    {
        printf("classB is kind of MyClass\n");
        
    }
    if([myClass isKindOfClass:[ClassA class]]==YES)
    {
        printf("myClass is kind of ClassA\n");
        
    }
    if([myClass isKindOfClass:[ClassB class]]==YES)
    {
        printf("myClass is kind of ClassB\n");
        
    }
    if([myClass isKindOfClass:[MyClass class]]==YES)
    {
        printf("myClass is kind of MyClass\n");
        
    }
    //--------------------------------------------------------------------
    if([classA isMemberOfClass:[ClassA class]]==YES)
    {
        printf("classA is member of ClassA\n");
        
    }
    if([classA isMemberOfClass:[ClassB class]]==YES)
    {
        printf("classA is member of ClassB\n");
        
    }
    if([classA isMemberOfClass:[MyClass class]]==YES)
    {
        printf("classA is member of MyClass\n");
        
    }
    if([classB isMemberOfClass:[ClassA class]]==YES)
    {
        printf("classb is member of ClassA\n");
        
    }
    if([classB isMemberOfClass:[ClassB class]]==YES)
    {
        printf("classB is member of ClassB\n");
        
    }
    if([classB isMemberOfClass:[MyClass class]]==YES)
    {
        printf("classB is member of MyClass\n");
        
    }
    if([myClass isMemberOfClass:[ClassA class]]==YES)
    {
        printf("myClass is member of ClassA\n");
        
    }
    if([myClass isMemberOfClass:[ClassB class]]==YES)
    {
        printf("myClass is member of ClassB\n");
        
    }
    if([myClass isMemberOfClass:[MyClass class]]==YES)
    {
        printf("myClass is member of MyClass\n");
        
    }
    //--------------------------------------------------------------
    if([classA respondsToSelector:@selector(methodA)]==YES)
    {
        printf("classA is respond to  MethodA\n");
    }
    if([classB respondsToSelector:@selector(methodA)]==YES)
    {
        printf("classB is respond to  MethodA\n");
    }
    if([myClass respondsToSelector:@selector(methodA)]==YES)
    {
        printf("MyClass is respond to  MethodA\n");
    }
    //---------------------
    if([classA respondsToSelector:@selector(methodB)]==YES)
    {
        printf("classA is respond to  methodB\n");
    }
    if([classB respondsToSelector:@selector(methodA)]==YES)
    {
        printf("classB is respond to  methodB\n");
    }
    if([myClass respondsToSelector:@selector(methodA)]==YES)
    {
        printf("MyClass is respond to  methodB\n");
    }
    //--------------------------------
    if([classA respondsToSelector:@selector(myMethod)]==YES)
    {
        printf("classA is respond to  myMethod\n");
    }
    if([classB respondsToSelector:@selector(myMethod)]==YES)
    {
        printf("classB is respond to  myMethod\n");
    }
    if([myClass respondsToSelector:@selector(myMethod)]==YES)
    {
        printf("MyClass is respond to  myMethod\n");
    }
    return 0;
    
}

