//
//  KRNumUtil.h
//  kreditbro
//
//  Created by 戴培琼 on 2019/10/26.
//  Copyright © 2019 lai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KRNumUtil : NSObject
#pragma mark - 初始化方法
/**
 自定义的高精度DecimalNumber
 @param model NSRoundingMode。  NSRoundPlain,   // Round up on a tie
 NSRoundDown,   只舍不入 // Always down == truncate
 NSRoundUp,    四舍五入  // Always up
 NSRoundBankers
 @param size 保留位数
 @param str 要进行处理的数值类字符串
 @return 回调高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberWithRoundingMode:(NSRoundingMode)model  scale:(NSInteger)size string:(NSString*)str;


/**
 自定义的高精度DecimalNumber
 @param model NSRoundingMode。
 // NSRoundPlain,   // Round up on a tie
 /NSRoundDown,   只舍不入 // Always down == truncate
 // NSRoundUp,    四舍五入  // Always up
 //NSRoundBankers
 @param size 保留位数
 @param num 要进行处理的数值
 @return 回调高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberWithRoundingMode:(NSRoundingMode)model  scale:(short)size num:(double)dou;



/**
 自定义的NSDecimalNumberHandler
 
 @param model NSRoundingMode。
 //NSRoundPlain,   // Round up on a tie
 //NSRoundDown,   只舍不入 // Always down == truncate
 // NSRoundUp,    四舍五入  // Always up
 //NSRoundBankers
 @param size 保留位数
 @return 回调自定义的NSDecimalNumberHandler
 */
+(NSDecimalNumberHandler*)decimalNumberHandlerWithRoundingMode:(NSRoundingMode)model  scale:(NSInteger)size;


/**
 自定义的高精度DecimalNumber
 @param handler NSDecimalNumberHandler类对象
 @param str 要进行处理的数值类字符串
 @return 回调高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberWithDecimalNumberHandle:(NSDecimalNumberHandler*)handler  string:(NSString*)str;


/**
 自定义的高精度DecimalNumber
 @param handler NSDecimalNumberHandler类对象
 @param str 要进行处理的数值
 @return 回调高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberWithDecimalNumberHandle:(NSDecimalNumberHandler*)handler  num:(double)dou;



#pragma mark - 运算方法
/**
 两个DecimalNumber减法的定义
 
 @param left 左边的高精度DecimalNumber
 @param right 右边的高精度DecimalNumber
 @param handler NSDecimalNumberHandler类对象 包含保留的位数定义和取舍的原则
 @return 回调相减后的高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberBySubtractingWithleftDecimalNumber:(NSDecimalNumber*)left  right:(NSDecimalNumber*)right DecimalNumberHandle:(NSDecimalNumberHandler*)handler;


/**
 两个DecimalNumber加法的定义
 
 @param left 左边的高精度DecimalNumber
 @param right 右边的高精度DecimalNumber
 @param handler NSDecimalNumberHandler类对象 包含保留的位数定义和取舍的原则
 @return 回调相加后的高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberByAddingWithleftDecimalNumber:(NSDecimalNumber*)left  right:(NSDecimalNumber*)right DecimalNumberHandle:(NSDecimalNumberHandler*)handler;


/**
 两个DecimalNumber乘法的定义
 
 @param left 左边的高精度DecimalNumber
 @param right 右边的高精度DecimalNumber
 @param handler NSDecimalNumberHandler类对象 包含保留的位数定义和取舍的原则
 @return 回调相乘后的高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberByMultiplyingByWithleftDecimalNumber:(NSDecimalNumber*)left  right:(NSDecimalNumber*)right DecimalNumberHandle:(NSDecimalNumberHandler*)handler;


/**
 两个DecimalNumber除法的定义
 
 @param left 左边的高精度DecimalNumber
 @param right 右边的高精度DecimalNumber
 @param handler NSDecimalNumberHandler类对象 包含保留的位数定义和取舍的原则
 @return 回调相除后的高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberByDividingByWithleftDecimalNumber:(NSDecimalNumber*)left  right:(NSDecimalNumber*)right DecimalNumberHandle:(NSDecimalNumberHandler*)handler;


/**
 两个DecimalNumber平方的定义
 
 @param left 高精度DecimalNumber
 @param size size次方
 @param handler NSDecimalNumberHandler类对象 包含保留的位数定义和取舍的原则
 @return 回调size方后的高精度DecimalNumber
 */
+(NSDecimalNumber*)decimalNumberByRaisingToPowerWithleftDecimalNumber:(NSDecimalNumber*)left  Power:(NSUInteger)size DecimalNumberHandle:(NSDecimalNumberHandler*)handler;

#pragma mark - 比较方法

/**
 两个高精度数值比较结果
 NSOrderedAscending left < right
 NSOrderedAscending  left > right
 NSOrderedSame        left = right
 @param left 左边的高精度DecimalNumber
 @param right 右边的高精度DecimalNumber
 @return 比较结果 NSComparisonResult
 */
+(NSComparisonResult)decimalNumberCompareWithleftDecimalNumber:(NSDecimalNumber*)left right:(NSDecimalNumber*)right;

@end

NS_ASSUME_NONNULL_END
