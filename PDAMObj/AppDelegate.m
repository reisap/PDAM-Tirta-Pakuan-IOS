//
//  AppDelegate.m
//  PDAMObj
//
//  Created by reisa prasaptaraya on 4/25/16.
//  Copyright © 2016 reisa prasaptaraya. All rights reserved.
//

#import "AppDelegate.h"
#import "ObjectiveRecord.h"
#import "CoreDataManager.h"
#import <MagicalRecord/MagicalRecord.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [MagicalRecord setupAutoMigratingCoreDataStack];
    
    [CoreDataManager sharedManager].modelName = @"SaveUser";
    [CoreDataManager sharedManager].databaseName = @"SaveUser";
    [[CoreDataManager sharedManager] useInMemoryStore];
    [IQKeyboardManager sharedManager].enable = true;
    [[SingleLineTextField appearance] setLineDisabledColor:[UIColor cyanColor]];
    [[SingleLineTextField appearance] setLineNormalColor:[UIColor grayColor]];
    [[SingleLineTextField appearance] setLineSelectedColor:[UIColor grayColor]];
    [[SingleLineTextField appearance] setInputPlaceHolderColor:[UIColor grayColor]];
    [[SingleLineTextField appearance] setInputFont:[UIFont boldSystemFontOfSize:15]];
    [[SingleLineTextField appearance] setPlaceHolderFont:[UIFont boldSystemFontOfSize:13]];
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

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Saves changes in the application's managed object context before the application terminates.
    [[CoreDataManager sharedManager] saveContext];
}

@end
