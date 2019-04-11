//
//  main.m
//  ipCutterDemo
//
//  Created by JETS Mobile Lab-7 on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    printf("please enter your ip : ");
    NSString *ip;
    char inputIP[100]={0};
    scanf("%s",inputIP);
    ip=[NSString stringWithCString:inputIP encoding:NSASCIIStringEncoding];
    NSArray *listofStrings = [ip componentsSeparatedByString:@"."];
    printf("First Way : \n");
    for(int i=0; i<[listofStrings count]; i++)
    {
        NSString *item=listofStrings[i];
        NSLog(@"%@", item);
    }
    NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:@"."];

    NSArray *listofStringsTwo = [ip componentsSeparatedByCharactersInSet:characterSet];
    printf("Second Way : \n");
    for(int i=0; i<[listofStringsTwo count]; i++)
    {
        NSString *item=listofStringsTwo[i];
        NSLog(@"%@", item);
    }
    return 0;
}
