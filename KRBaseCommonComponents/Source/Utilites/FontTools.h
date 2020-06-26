//
//  FontTools.h
//  kreditbro
//
//  Created by 戴培琼 on 2019/3/30.
//  Copyright © 2019 lai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FontTools : NSObject
#define KRFont(n) [UIFont systemFontOfSize:n]
#define TITLE_BIG_SIZE KRFont(16)
#define TITLE_MIDDLE_SIZE KRFont(14)
#define TITLE_SMALL_SIZE KRFont(12)

#define KRBoleFont(n) [UIFont boldSystemFontOfSize:n]

@end

NS_ASSUME_NONNULL_END
