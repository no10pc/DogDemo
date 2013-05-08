//
//  Dog.h
//  DogDemo
//
//  Created by 付 翾宇 on 13-5-9.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog;
//前向声明
//定义一个人和狗通讯的方式 定义协议
@protocol DogBark <NSObject>

-(void) bark:(Dog *)thisDog count:(int)count;

@end

@protocol DogBark;

@interface Dog : NSObject
{
    NSTimer *timer;
    
    int barkCount;
    
    int _ID;
    
    id <DogBark> delegate;//狗的主人
}
@property int ID;
@property (assign) id <DogBark> delegate;
@end










