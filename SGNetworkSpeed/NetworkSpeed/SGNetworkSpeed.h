//
//  SGNetworkSpeed.h
//  SGNetworkSpeed
//
//  Created by shanggang on 2019/3/20.
//  Copyright © 2019年 lucky. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// 下载通知的key
extern NSString *const GSDownloadNetworkSpeedNotificationKey;
// 上传通知的key
extern NSString *const GSUploadNetworkSpeedNotificationKey;

@interface SGNetworkSpeed : NSObject
@property (nonatomic, copy, readonly) NSString*downloadNetworkSpeed;
@property (nonatomic, copy, readonly) NSString *uploadNetworkSpeed;
+ (instancetype)shareNetworkSpeed;
//开始监听
- (void)start;
//停止监听
- (void)stop;
@end

NS_ASSUME_NONNULL_END
