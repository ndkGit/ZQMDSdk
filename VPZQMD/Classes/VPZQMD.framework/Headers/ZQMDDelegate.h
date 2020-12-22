//
//  Copyright © 2016年 jun. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void (^VPVoidBlock)(void);

typedef void (^VPIndexBlock)(NSInteger index,BOOL result);

typedef void (^ZQMDBlock)(BOOL result,NSDictionary *returnData,UIViewController *homeVC);

#define VPZqmdSDK       [ZQMDDelegate shareSingleton]

@interface ZQMDDelegate : NSObject

+(instancetype)shareSingleton;

/**
 *environment 1.生产， 2.测试
 *destination 0.店铺列表， 1 是创建店铺， 2业务库
 */
- (void)launchWithToken:(NSString *)token environment:(NSUInteger)environment destination:(NSUInteger)index block:(ZQMDBlock)block vcIndexBlock:(VPIndexBlock)indexBlock;

@property (nonatomic, copy) VPVoidBlock logoutBlock;

-(void)testLogin:(ZQMDBlock)block;






@end

