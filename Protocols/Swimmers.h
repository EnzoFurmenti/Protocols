//
//  Swimmers.h
//  Protocols
//
//  Created by EnzoF on 24.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    SwimmersCrawlStyle,
    SwimmersBreaststrokeStyle,
    SwimmersBackstrokeStyle
}SwimmersSwimmingStyle;

@protocol Swimmers <NSObject>

@property(nonatomic, assign) SwimmersSwimmingStyle swimmingStyle;
@property(nonatomic, assign) double distance;


- (void)swim;

@optional
- (void)styleSwim;

@end
