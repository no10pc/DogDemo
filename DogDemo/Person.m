//
//  Person.m
//  DogDemo
//
//  Created by 付 翾宇 on 13-5-9.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize dog=_dog;

-(void)setDog:(Dog *)dog
{
    if(_dog!=dog){
        [dog release];
        _dog = [dog retain];
        //通知 DOG 的主人是 self
        [_dog setDelegate:self];
    }
}


-(Dog *) dog
{
    return _dog;
}

-(void) bark:(Dog *)thisDog count:(int)count
{
    //当狗叫唤的时候来调用 xiaoLi人的这个方法
    NSLog(@"嗯哪 xiaoLi 听到 dog %d bark %d",[thisDog ID],count);
    printf("\n");
}

-(void)dealloc{
    self.dog = nil;
    [super dealloc];
}

@end
