//
//  AppDelegate.m
//  测试项目
//
//  Created by mac on 15/9/3.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    MainViewController * mainVc = [[MainViewController alloc] init];
    

    
    
    //设置显示
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.rootViewController = mainVc;
    [self.window makeKeyAndVisible];
        
    return YES;
}



@end
