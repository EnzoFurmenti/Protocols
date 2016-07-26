//
//  Jumpers.h
//  Protocols
//
//  Created by EnzoF on 24.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum{
    LongType,
    HeightType
}JumpersJumpType;

@protocol Jumpers <NSObject>

@property(nonatomic,assign) double totalJump;
@property(nonatomic,assign) JumpersJumpType jumpType;


-(void)spring;

@optional
-(void)maxJump;
@end
