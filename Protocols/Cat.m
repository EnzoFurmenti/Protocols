//
//  Cat.m
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Cat.h"

@implementation Cat


-(void)spring{

    if(self.jumpType == LongType)
    {
        NSLog(@" Кот %@ - прыгнул в длину %f",self.nickname,self.totalJump);
    }
    
    if(self.jumpType == HeightType)
    {
        NSLog(@"Кот %@ - прыгнул в высоту %f",self.nickname
              ,self.totalJump);
    }
    
}


- (void)maxJump{

    NSLog(@"Кошки очень хорошие прыгуны в высоту!!!");
}

-(void)move{
    
    NSLog(@"Коты убегают от собак");
}


@end
