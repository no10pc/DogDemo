//
//  main.m
//  DogDemo
//
//  Created by 付 翾宇 on 13-5-9.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Person *xiaoLi =[[Person alloc] init];
        Dog *dog =[[Dog alloc] init];
        [dog setID:10];
        [xiaoLi setDog:dog ];
        [dog release];
        
        
        
        while(1){
            [[NSRunLoop currentRunLoop] run];
        }
        
        
        
       
        [xiaoLi release];
    }
    return 0;
}

