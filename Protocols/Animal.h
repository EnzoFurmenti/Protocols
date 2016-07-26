//
//  Animal.h
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property(nonatomic,strong) NSString *nickname;
@property(nonatomic,assign) int age;
@property(nonatomic,assign) double weight;
@property(nonatomic,strong) NSString *sex;

- (void)move;


@end
