//
//  Jumper.h
//  Protocols
//
//  Created by EnzoF on 26.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Human.h"
#import "Jumpers.h"

@interface Jumper : Human <Jumpers>

@property(nonatomic,assign) double totalJump;
@property(nonatomic,assign) JumpersJumpType jumpType;


-(void)spring;

@end
