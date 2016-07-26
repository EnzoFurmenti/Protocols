//
//  Dog.m
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Dog.h"

@implementation Dog


- (void)swim{
    
    NSLog(@"У собак свой собственный стиль плавания");
}

- (void)run{

    NSLog(@"Собакие хороште бегуны");
}
- (void)styleSwim{

    NSLog(@"Стиль плавания у собак, называется \"Плавать по собачьи!\"");
}
-(void)move{
    
    NSLog(@"Собаки гоняются за кошками");
}

-(void)distanceRoad{

    NSLog(@"Собаки пробегают большие расстояния");
}

@end
