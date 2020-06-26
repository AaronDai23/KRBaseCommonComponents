//
//  NSString+Urlcode.h
//  kreditbro
//
//  Created by 戴培琼 on 2019/3/18.
//  Copyright © 2019 lai. All rights reserved.
//



NS_ASSUME_NONNULL_BEGIN

@interface NSString (Urlcode)
//urlEncode解码
+ (NSString *)decoderUrlEncodeStr: (NSString *) input;
//urlEncode编码
+(NSString *)urlEncodeStr:(NSString *)input;
@end

NS_ASSUME_NONNULL_END
