//
//  Runner.m
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Runner.h"

@implementation Runner

- (void)run{
    
    if (self.RunnerType == SprintType)
    {
        NSLog(@"%@Чемпион на дистанции %d!\n Максимальная скорость %f",self.name,self.distance,self.maxSpeed);
    }
    if(self.RunnerType == RunningHurdlesType)
    {
        NSLog(@"%@Чемпион  бега с препятствиями  на дистанции %d!\n Максимальная скорость %f",self.name,self.distance,self.maxSpeed);
    }
}

-(void)move{
    [super move];
    NSLog(@"%@ Классно пробежал!",self.name);
}

@end
