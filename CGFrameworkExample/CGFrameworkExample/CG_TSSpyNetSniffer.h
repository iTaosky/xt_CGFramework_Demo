//
//  CG_TSSpyNetSniffer.h
//  CGFrameworkExample
//
//  Created by Thomas on 2021/1/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CG_TSSpyNetSniffer : NSObject

+ (void)spyNet:(void(^)(bool status))callBack;
@end

NS_ASSUME_NONNULL_END
