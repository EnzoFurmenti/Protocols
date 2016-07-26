//
//  Swimmer.m
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Swimmer.h"

@implementation Swimmer

-(void)swim{
    if(self.swimmingStyle == SwimmersCrawlStyle)
    {
        NSLog(@"%@ - пловец. На дистанции %f выбрал стиль  кроль",self.name,self.distance);
    }
    
    if(self.swimmingStyle == SwimmersBreaststrokeStyle)
    {
        NSLog(@"%@ - пловец. На дистанции %f выбрал стиль  брасс",self.name,self.distance);
    }
    
    if(self.swimmingStyle == SwimmersBackstrokeStyle)
    {
        NSLog(@"%@ - пловец. На дистанции %f выбрал стиль  на спине",self.name,self.distance);
    }
}

-(void)move{
    [super move];
    NSLog(@"%@ Классно проплыл!",self.name);
}

@end
