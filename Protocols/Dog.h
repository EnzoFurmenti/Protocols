//
//  Dog.h
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Animal.h"
#import "Swimmers.h"
#import "Runners.h"

@interface Dog : Animal <Swimmers,Runners>

@property(nonatomic, assign) SwimmersSwimmingStyle swimmingStyle;
@property(nonatomic, assign) double distance;

@property(nonatomic, assign) RunnersRunnerType RunnerType;
@property(nonatomic, assign) double maxSpeed;

- (void)run;

- (void)swim;

- (void)styleSwim;

-(void)distanceRoad;


@end
