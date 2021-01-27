//
//  CG_TSSpyNetSniffer.m
//  CGFrameworkExample
//
//  Created by Thomas on 2021/1/27.
//

#import "CG_TSSpyNetSniffer.h"
#import "AFNetworking.h"

@implementation CG_TSSpyNetSniffer

+ (void)spyNet:(void(^)(bool status))callBack {
    
    AFNetworkReachabilityManager *mgr = [AFNetworkReachabilityManager sharedManager];
    [mgr startMonitoring];
    [mgr setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusReachableViaWiFi:
                callBack(YES);
                break;
            default:
                break;
        }
        
    }];
}

@end
