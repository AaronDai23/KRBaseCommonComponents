//
//  NSBundle+DAUtils.h
//  kreditbro
//
//  Created by 戴培琼 on 2019/9/7.
//  Copyright © 2019 lai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (DAUtils)
+ (BOOL)isChineseLanguage;

+ (NSString *)currentLanguage;
@end

NS_ASSUME_NONNULL_END
