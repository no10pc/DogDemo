//
//  Person.h
//  DogDemo
//
//  Created by 付 翾宇 on 13-5-9.
//  Copyright (c) 2013年 no10pc@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

@interface Person : NSObject
<DogBark>
{
    Dog *_dog;
}
@property (retain) Dog *dog;
@end
