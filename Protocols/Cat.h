//
//  Cat.h
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Animal.h"
#import "Jumpers.h"

@interface Cat : Animal <Jumpers>

@property(nonatomic,assign) double totalJump;
@property(nonatomic,assign) JumpersJumpType jumpType;


-(void)spring;

-(void)maxJump;

@end
