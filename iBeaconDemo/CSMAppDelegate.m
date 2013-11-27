//
//  CSMAppDelegate.m
//  iBeacons_Demo
//
//  Created by Christopher Mann on 9/5/13.
//  Copyright (c) 2013 Christopher Mann. All rights reserved.
//

#import "CSMAppDelegate.h"

#define kMyStoreNumber 1
#define kWeeklySpecialItemNumber 1


@implementation CSMAppDelegate

+ (CSMAppDelegate*)appDelegate {
    return (CSMAppDelegate*)[UIApplication sharedApplication].delegate;
}

- (NSUUID*)myUUID {
    if (!_myUUID) {
        // generate unique identifier
        _myUUID = [[NSUUID alloc] initWithUUIDString:@"37E7DAB3-BD1A-42A4-8A0F-1076D3F3A44F"];
    }
    return _myUUID;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.rootViewController = [[CSMRootViewController alloc] init];
    // define navbar appearance
    [[UINavigationBar appearance] setBarTintColor:kAppTintColor];
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleBlack];
    
    // set status bar style
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.rootViewController;
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.tintColor = kAppTintColor;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
    application.applicationIconBadgeNumber=0;
}

//- (void)applicationDidEnterBackground:(UIApplication *)application{
//    NSString* body=@"hi this just notification";
//    UILocalNotification *notification = [[UILocalNotification alloc] init];
//    notification.alertBody = body;
//    notification.soundName = UILocalNotificationDefaultSoundName;
//    notification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
//    [[UIApplication sharedApplication] presentLocalNotificationNow:notification];
//}

@end
