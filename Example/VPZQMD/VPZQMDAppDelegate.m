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
    
    
    NSString *testToken = @"eyJhcHBJZCI6IldQXzAxIiwiY29udGVudCI6ImQ2T0xmTjlFbDU3cGIwL3poUlU1Z0llWFNlWGlNN1l3NXcycm1kVWpMWTNpdmlJaktmUy9yK2xTSTB6NC9UU0VseUo2ektmUXE3YWw3aEM2enBtKzBuTWlaVXloRmV2SEJvRjFPTCtkWFkrNGlXVWVkYnNFUGsyOExUQWE1R1FMMjdKanRoL25iWGtqbmZRenUydFlWeVd2aTU1UnpZSHg4OTUrT1lHQVIydXFVbyt4NjJTZWdCNkhwQnRDWXJEV1h6dXdBanQ1Zmx5WThiUXZzY1I0eGxRZlMyK1Q5UmZ0cjRLOWZ4OXBEOWRaVnYzTTRlM0ZHWk03QVo4dk43cmF5eURUdStQR3EvemtzWU8wZUxDLzQ0TVB4U1hpYUxpbXdPY0diMmlXcDJGOTQrZTZJSTR6VzhXUWo4ZU4vZlF2V1dBeWh2Q3o3blg4eUNqUjQrbk5RRm4zWEpZaHR4b2RwV0tlTzEvay9na1ZKMWdER2h2d3NvMTA2QkphSWJBUVdLcUkwdmkwM2hZeTNoWmxDQWZxengvb21LN0dZeVZmQ3lFbmFRVHpkWEJYVklYVTdyWEdyWUFVZUUxZU4rb3dlRnlobG0zVTdxUDUyN0NqRFdoQXFicWszSndLVmNtREx2eEFEVGFhaTM3RkZybFNQWm1JRDBtRU12MXpGTitXIn0=";
    

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
    

    
    VPZqmdSDK.shareBlock = ^(NSDictionary *resultDict) {
//        {"type":"image","data":{"image":UIImage对象},"shareType":["wechat_contacts","wechat_discover"]}
        
        NSString *text = @"";
        
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
