//
//  Dog.m
//  DogDemo
//
//  Created by 付 翾宇 on 13-5-9.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import "Dog.h"

@implementation Dog

@synthesize ID=_ID;
@synthesize delegate;

-(id)init
{
    self =[super init];
    if(self){
        timer =[NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(updateTimer:) userInfo:nil repeats:YES];
        //创建一个定时器,每隔1秒调用[self updateTimer:nil];
    }
    return self;
}

-(void)updateTimer:(id)arg
{
    barkCount++;
    NSLog(@"dog bark %d 声音",barkCount);
    [delegate bark:self count:barkCount];
}

@end
