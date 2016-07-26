//
//  AppDelegate.m
//  Protocols
//
//  Created by EnzoF on 24.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "Human.h"
#import "Jumper.h"
#import "Lazybones.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Animal.h"
#import "Cat.h"
#import "Dog.h"
#import "Kangaroo.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window =[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor greenColor];
    [self.window makeKeyWindow];
    ViewController *viewController = [[ViewController alloc]init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.rootViewController = navController;
    
    
    
    Human *human = [[Human alloc] init];
    human.name = @"Smith";
    human.stature = 180.f;
    human.sex = @"M";
    human.weight = 80.f;
    
    
    Runner *runner1 = [[Runner alloc] init];
    runner1.name = @"Dakota";
    runner1.stature = 172.f;
    runner1.sex = @"F";
    runner1.weight = 60.f;
    runner1.RunnerType = SprintType;
    runner1.distance = 400.f;
    runner1.maxSpeed = 30.f;

    
    Runner *runner2 = [[Runner alloc] init];
    runner2.name = @"Johnson";
    runner2.stature = 174.f;
    runner2.sex = @"F";
    runner2.weight = 62.f;
    runner2.RunnerType = RunningHurdlesType;
    runner2.distance = 800.f;
    runner2.maxSpeed = 28.f;

    
    Jumper *jumper1 = [[Jumper alloc] init];
    jumper1.name = @"Dakota";
    jumper1.stature = 172.f;
    jumper1.sex = @"F";
    jumper1.weight = 60.f;
    jumper1.jumpType =  LongType;
    jumper1.totalJump = 14.f;
    

    Jumper *jumper2 = [[Jumper alloc] init];
    jumper2.name = @"Johnson";
    jumper2.stature = 179.f;
    jumper2.sex = @"F";
    jumper2.weight = 72.f;
    jumper2.jumpType = HeightType;
    jumper2.totalJump = 2.8f;
    
    
    
    Swimmer *swimmer1 = [[Swimmer alloc] init];
    swimmer1.name = @"Dakota";
    swimmer1.stature = 173.f;
    swimmer1.sex = @"M";
    swimmer1.weight = 67.f;
    swimmer1.distance = 400.f;
    swimmer1.swimmingStyle = SwimmersCrawlStyle;
    
    
    Swimmer *swimmer2 = [[Swimmer alloc] init];
    swimmer2.name = @"Johnson1";
    swimmer2.stature = 195.f;
    swimmer2.sex = @"M";
    swimmer2.weight = 90.f;
    swimmer2.swimmingStyle = SwimmersBreaststrokeStyle;
    swimmer2.distance = 400.f;
    
    
    Swimmer *swimmer3 = [[Swimmer alloc] init];
    swimmer3.name = @"Johnson2";
    swimmer3.stature = 195.f;
    swimmer3.sex = @"M";
    swimmer3.weight = 90.f;
    swimmer3.swimmingStyle = SwimmersBackstrokeStyle;
    swimmer3.distance = 800.f;
    
    
    Lazybones *lazybones = [[Lazybones alloc] init];
    lazybones.name = @"Johnson";
    lazybones.stature = 180.f;
    lazybones.sex = @"M";
    lazybones.weight = 80.f;


    
    
    Cat *cat = [[Cat alloc] init];
    cat.nickname = @"Jake";
    cat.age = 5;
    cat.weight = 5.3f;
    cat.sex = @"M";
    cat.totalJump = 1.f;
    
    
    Dog *dog = [[Dog alloc] init];
    dog.nickname = @"Bob";
    dog.age = 3;
    dog.weight = 16.2f;
    dog.sex = @"M";
    
    
    Kangaroo *kangaroo = [[Kangaroo alloc] init];
    kangaroo.nickname = @"Jake";
    kangaroo.age = 5;
    kangaroo.weight = 80.f;
    kangaroo.sex = @"M";
    
    
    NSArray *array = [[NSArray alloc] initWithObjects:human,runner1,runner2,jumper1,jumper2,swimmer1,swimmer2,swimmer3,cat,dog,kangaroo, nil];
    
    for(id obj in array)
    {
        id currentObj;
        if([obj isKindOfClass:[Human class]])
        {
            if([obj isKindOfClass:[Jumper class]])
            {
                currentObj = (Jumper*)obj;
            
            }
            
            if([obj isKindOfClass:[Runner class]])
            {
                currentObj = (Runner*)obj;
            
            }
            
            if([obj isKindOfClass:[Swimmer class]])
            {
                currentObj = (Swimmer*)obj;
            
            
            }
            if([obj isKindOfClass:[Lazybones class]])
            {
                currentObj = (Lazybones*)obj;
            
            }
            else
            {
                currentObj = (Human*)obj;
            
            }
            
        
        }
        else
        {
            if([obj isKindOfClass:[Cat class]])
            {
                currentObj = (Cat*)obj;
                
            }
            
            if([obj isKindOfClass:[Dog class]])
            {
                currentObj = (Dog*)obj;
                
            }
            
            if([obj isKindOfClass:[Kangaroo class]])
            {
                currentObj = (Kangaroo*)obj;
            }
            
        }
        
        [currentObj move];
        
        if([currentObj conformsToProtocol:@protocol(Swimmers)])
        {
            if([currentObj respondsToSelector:@selector(style)])
            {
                [currentObj swim];
                [currentObj styleSwim];
            }
            else
            {
                [currentObj swim];
            }
        }
        if([currentObj conformsToProtocol:@protocol(Jumpers)])
        {
            if([currentObj respondsToSelector:@selector(maxJump)])
            {
                [currentObj spring];
                [currentObj maxJump];
            }
            else
            {
                [currentObj spring];
            }

        }
        
        if([currentObj conformsToProtocol:@protocol(Runners)])
        {
            if([currentObj respondsToSelector:@selector(distanceRoad)])
            {
                [currentObj run];
                [currentObj distanceRoad];
            }
            else
            {
                [currentObj run];
            }
        }
    }
    
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
