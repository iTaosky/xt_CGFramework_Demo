//
//  TSAFNTest.m
//  xt_CGFramework_Demo
//
//  Created by Thomas on 2021/1/26.
//

#import "TSAFNTest.h"
#import "AFNetworking.h"

@implementation TSAFNTest

+ (void)monitorNetworking:(void(^)(bool has))callBack {
    
    AFNetworkReachabilityManager *mgr = [AFNetworkReachabilityManager sharedManager];
    [mgr startMonitoring];
    [mgr setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusNotReachable:
                callBack(NO);
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                callBack(YES);
                break;
            default:
                break;
        }
        
    }];
}

@end
