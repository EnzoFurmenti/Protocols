//
//  Jumper.m
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Jumper.h"

@implementation Jumper



-(void)spring{
        
    if(self.jumpType == LongType)
    {
        NSLog(@"%@ - прыгнул в длину %f",self.name,self.totalJump);
    }
    
    if(self.jumpType == HeightType)
    {
        NSLog(@"%@ - прыгнул в высоту %f",self.name,self.totalJump);
    }
    
}



-(void)move{
    [super move];
    NSLog(@"%@ Классно проплыл!",self.name);
}

@end
