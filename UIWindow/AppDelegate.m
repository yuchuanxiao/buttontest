//
//  AppDelegate.m
//  UIWindow
//
//  Created by admin on 2019/1/8.
//  Copyright © 2019年 admin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //创建一个uiwindow对象，整个程序只有一个uiwindow对象，表示屏幕窗口
    //UIWindow继承于UIView，是一个特殊的UIView
    //UIScreen表示屏幕硬件表示类，mainScreen获得主屏幕设备信息，bounds表示屏幕的宽高值
    //self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window=[[UIWindow alloc]init];
    self.window.frame=[UIScreen mainScreen].bounds;
    //创建一个uiwindow的根视图控制器
    self.window.rootViewController=[[UIViewController alloc]init];
    
    self.window.backgroundColor=[UIColor blueColor];
    
    UIView* view=[[UIView alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    view.backgroundColor=[UIColor orangeColor];
    [self.window addSubview:view];
    
    //背景视图
    UIView* backView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 240, 360)];
    backView.backgroundColor=[UIColor greenColor];
    
    //将bcakView作为view的父亲视图
    //子视图的坐标时参照父亲视图的 坐标系，当父亲视图移动时，所有的子视图都会移动
    [backView addSubview:view];
    
    [self.window addSubview:backView];
    
    //使window有效并显示到屏幕上
    [self.window makeKeyAndVisible];
    
    NSLog(@"%@",view.window);
    NSLog(@"%@",backView.window);
    NSLog(@"%@",self.window);
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
