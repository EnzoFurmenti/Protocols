//
//  Runners.h
//  Protocols
//
//  Created by EnzoF on 24.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    SprintType,
    RunningHurdlesType
}RunnersRunnerType;

@protocol Runners <NSObject>

@property(nonatomic, assign) RunnersRunnerType RunnerType;
@property(nonatomic, assign) double maxSpeed;

- (void)run;

@optional
-(void)distanceRoad;
@end
