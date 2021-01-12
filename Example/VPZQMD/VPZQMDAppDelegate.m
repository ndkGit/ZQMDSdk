//
//  VPZQMDAppDelegate.m
//  VPZQMD
//
//  Created by ndk on 12/07/2020.
//  Copyright (c) 2020 ndk. All rights reserved.
//

#import "VPZQMDAppDelegate.h"
#import <VPZQMD/ZQMDDelegate.h>
@implementation VPZQMDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController=[[UIViewController alloc]init];
    self.window.backgroundColor = UIColor.whiteColor;
    [self.window makeKeyAndVisible];
    
    
    NSString *testToken = @"eyJhcHBJZCI6IldQXzAxIiwiY29udGVudCI6IlFTOXI3bFdaZnA2WkcrMmwxeWpUSXZGZkplbVpHZ1hIejdJc0t0bzJmNDJVLzJZWk5SSnAzZlJZdTU5c2pQd296WXVRV3ptbmRsWjJKQjlNUG83RE5aVGNPdXdMMW1Demw5SFBHaXdUS0lvdUJiYUpuRTJPRXRLcVZMRVNadnBhYTJZQ1RVeURTczhKSWpjNEVhLzM2MmpSTmJRbnVjTXRybUJReklHQTcwZHFTTFAxbkNML3U5WnhNUnpVSjcvMkMzRkZxSUp3WkkvVVVJOTZaME1kTVV4cGppSFFVaHF0YW13UzQ0SzB4eVlIR0dhOTV5UVBKTmdQaHFOdU5NVC9MK1NMeDRJTVRISXdrSUNVbHRTQW5jVE9CQUovT0w5MnRMbWEvdHU4MTM5b1J1MHNiby8xOXdiQU5UMUM5NFlDRDhDSFk3MUU5THZ5V2Zzb1R2RXo5TXRVVVNQb1JjN2MxRkF2RHYzdGU0Rzk0UUk3enNEM2g2OFc4MzR6QytRYXU3dmdPZVZIRzUvcVJFelNPakNGbjM3SlJkVldOenpmL1p0a0RNL01YV21FanE5dTNvaUppWE9FdE5YSlIyaGdlN2RickdrYXRrWWJGdnBxQTJXcTBSbVhXY3VBWXdqR2pnVTdMV1RSTmlKeWdWVHAzMjBSQ2ZLNG9nSW9CYWhFIn0";
    

    [VPZqmdSDK launchWithToken:testToken environment:2 destination:0 block:^(BOOL result, NSDictionary *returnData, UIViewController *homeVC) {
        if (result) {
            UINavigationController *baseNav = [[UINavigationController alloc]initWithRootViewController:homeVC];
               self.window.rootViewController = baseNav;
        }
    } vcIndexBlock:^(NSInteger index, BOOL result) {
        NSLog(@"index===>>>%ld",index);
//        0.店铺列表， 1 是创建店铺， 2业务库，
//        目前只有创建店铺和 店铺装修 点左上角返回和提交完成有返回值1,  装修页面提交 调用接口成功会返回yes,其他是false


    }];
    
//    [VPZqmdSDK testLogin:^(BOOL result, NSDictionary *returnData, UIViewController *homeVC) {
//        UINavigationController *baseNav = [[UINavigationController alloc]initWithRootViewController:homeVC];
//           self.window.rootViewController = baseNav;
//    }];
    
    VPZqmdSDK.shareBlock = ^(NSDictionary *resultDict) {
//        {"type":"image","data":{"image":UIImage对象},"shareType":["wechat_contacts","wechat_discover"]}
        
        
        
    };
    
    

    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
