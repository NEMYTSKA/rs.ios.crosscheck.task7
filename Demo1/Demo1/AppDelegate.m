//
//  AppDelegate.m
//  Demo1
//
//  Created by Victor Semenchuk on 3/23/20.
//  Copyright © 2020 Victor Semenchuk. All rights reserved.
//

#import "AppDelegate.h"
#import "MyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    MyViewController *rootVC = [[MyViewController alloc] init];
//    MyViewController *rootVC = [[MyViewController alloc] initWithNibName:@"MyViewController" bundle:nil];
    [window setRootViewController:rootVC];

    self.window = window;
    [self.window makeKeyAndVisible];

    return YES;
}



@end
