//
//  Copyright © 2016年 jun. All rights reserved.
//

#import <UIKit/UIKit.h>



typedef void (^VPVoidBlock)(void);

typedef void (^ZQMDBlock)(BOOL result,UIViewController *homeVC);

#define VPZqmdSDK       [ZQMDDelegate shareSingleton]

@interface ZQMDDelegate : NSObject

+(instancetype)shareSingleton;

- (void)launchWithToken:(NSString *)token block:(ZQMDBlock)block;

@property (nonatomic, copy) VPVoidBlock logoutBlock;

-(void)testLogin:(ZQMDBlock)block;






@end

