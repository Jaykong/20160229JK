//
//  AppDelegate.m
//  NotificationCenterPassValue
//
//  Created by trainer on 4/1/16.
//  Copyright © 2016 trainer. All rights reserved.
//

#import "AppDelegate.h"
#import "ThirdViewController.h"
#import "SecondViewController.h"
#import "FirstViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UITabBarController *tabBarControler = (UITabBarController *)_window.rootViewController;
    ThirdViewController *third =  tabBarControler.viewControllers[2];
     SecondViewController *second =  tabBarControler.viewControllers[1];
    
     FirstViewController *first =  tabBarControler.viewControllers[0];
    
    [[NSNotificationCenter defaultCenter] addObserver:third selector:@selector(colorChanged:) name:@"TestNotification" object:second];
    //object:nil接受所有对象发出的TestNotification
    //也可以指定接受特定对象发出的TestNotification
   //colorChanged: 在消息发送中心post一个消息时自动触发
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"TestNotification" object:second userInfo:@{@"color":[UIColor yellowColor]}];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"TestNotification" object:first userInfo:@{@"color":[UIColor purpleColor]}];
    
    return YES;
}
-(void)colorChanged:(NSNotification *)noti {
    
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
