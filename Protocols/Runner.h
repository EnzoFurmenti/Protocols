//
//  Runner.h
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Human.h"
#import "Runners.h"

@interface Runner : Human <Runners>

@property(nonatomic, assign) RunnersRunnerType RunnerType;
@property(nonatomic, assign) double maxSpeed;

@property(nonatomic, assign) int distance;

- (void)run;


@end
