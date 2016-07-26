//
//  Swimmer.h
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Human.h"
#import "Swimmers.h"

@interface Swimmer : Human <Swimmers>

@property(nonatomic, assign) SwimmersSwimmingStyle swimmingStyle;
@property(nonatomic, assign) double distance;


- (void)swim;

@end
