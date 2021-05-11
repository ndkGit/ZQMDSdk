//
//  Copyright © 2016年 jun. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void (^VPVoidBlock)(void);

typedef void (^VPDicionaryBlock)(NSDictionary *resultDict);

typedef void (^VPIndexBlock)(NSInteger index,BOOL result);

typedef void (^ZQMDBlock)(BOOL result,NSDictionary *returnData,UIViewController *homeVC);

typedef void (^ZQMDLoginBlock)(BOOL result,UIViewController *homeVC);

#define VPZqmdSDK       [ZQMDDelegate shareSingleton]

@interface ZQMDDelegate : NSObject

+(instancetype)shareSingleton;

/**
 *environment 1.生产， 2.测试
 *destination 0.店铺列表， 1 是创建店铺， 2业务库
 */
- (void)launchWithToken:(NSString *)token environment:(NSUInteger)environment destination:(NSUInteger)index block:(ZQMDBlock)block vcIndexBlock:(VPIndexBlock)indexBlock;

@property (nonatomic, copy) VPVoidBlock logoutBlock;


/**
 *{"type" : "1" }  1小程序分享， 2.二维码图片， 3 海报图片
 */
@property (nonatomic, copy) VPDicionaryBlock shareBlock;

//-(void)loginWithDictionary:(NSDictionary *)dataDic loginBlock:(ZQMDLoginBlock)loginBlock;





@end

