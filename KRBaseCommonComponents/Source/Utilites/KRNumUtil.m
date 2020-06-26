//
//  KRNumUtil.m
//  kreditbro
//
//  Created by 戴培琼 on 2019/10/26.
//  Copyright © 2019 lai. All rights reserved.
//

#import "KRNumUtil.h"

@implementation KRNumUtil

#pragma mark - 初始化方法
+(NSDecimalNumber*)decimalNumberWithRoundingMode:(NSRoundingMode)model  scale:(short)size num:(double)dou{
    NSDecimalNumberHandler *roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:model
                                                                                                      scale:size
                                                                                           raiseOnExactness:NO
                                                                                            raiseOnOverflow:NO
                                                                                           raiseOnUnderflow:NO
                                                                                        raiseOnDivideByZero:NO];
    NSDecimalNumber *n1 = [[NSDecimalNumber alloc] initWithDouble:dou];
    NSDecimalNumber *resultDN1 = [n1 decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    return resultDN1;
}

+(NSDecimalNumber*)decimalNumberWithRoundingMode:(NSRoundingMode)model  scale:(NSInteger)size string:(NSString*)str{
    NSDecimalNumberHandler *roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:model
                                                                                                      scale:size
                                                                                           raiseOnExactness:NO
                                                                                            raiseOnOverflow:NO
                                                                                           raiseOnUnderflow:NO
                                                                                        raiseOnDivideByZero:YES];
    NSDecimalNumber *n1 = [[NSDecimalNumber alloc] initWithString:str];
    NSDecimalNumber *resultDN1 = [n1 decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    return resultDN1;
}

+(NSDecimalNumberHandler*)decimalNumberHandlerWithRoundingMode:(NSRoundingMode)model  scale:(NSInteger)size{
    NSDecimalNumberHandler *roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:model
                                                                                                      scale:size
                                                                                           raiseOnExactness:NO
                                                                                            raiseOnOverflow:NO
                                                                                           raiseOnUnderflow:NO
                                                                                        raiseOnDivideByZero:NO];
    return roundingBehavior;
}

+(NSDecimalNumber*)decimalNumberWithDecimalNumberHandle:(NSDecimalNumberHandler*)handler  string:(NSString*)str{
    NSDecimalNumber *n1 = [[NSDecimalNumber alloc] initWithString:str];
    NSDecimalNumber *resultDN1 = [n1 decimalNumberByRoundingAccordingToBehavior:handler];
    return resultDN1;
}

+(NSDecimalNumber*)decimalNumberWithDecimalNumberHandle:(NSDecimalNumberHandler*)handler  num:(double)dou{
    NSDecimalNumber *n1 = [[NSDecimalNumber alloc] initWithDouble:dou];
    NSDecimalNumber *resultDN1 = [n1 decimalNumberByRoundingAccordingToBehavior:handler];
    return resultDN1;
}


#pragma mark - 运算方法
+(NSDecimalNumber*)decimalNumberBySubtractingWithleftDecimalNumber:(NSDecimalNumber*)left  right:(NSDecimalNumber*)right DecimalNumberHandle:(NSDecimalNumberHandler*)handler{
    NSDecimalNumber *reslut = [left decimalNumberBySubtracting:right withBehavior:handler];
    return reslut;
}

+(NSDecimalNumber*)decimalNumberByAddingWithleftDecimalNumber:(NSDecimalNumber*)left  right:(NSDecimalNumber*)right DecimalNumberHandle:(NSDecimalNumberHandler*)handler{
    NSDecimalNumber *reslut = [left decimalNumberByAdding:right withBehavior:handler];
    return reslut;
}

+(NSDecimalNumber*)decimalNumberByMultiplyingByWithleftDecimalNumber:(NSDecimalNumber*)left  right:(NSDecimalNumber*)right DecimalNumberHandle:(NSDecimalNumberHandler*)handler{
    
    NSDecimalNumber *reslut = [left decimalNumberByMultiplyingBy:right withBehavior:handler];
    return reslut;
}

+(NSDecimalNumber*)decimalNumberByDividingByWithleftDecimalNumber:(NSDecimalNumber*)left  right:(NSDecimalNumber*)right DecimalNumberHandle:(NSDecimalNumberHandler*)handler{
    NSDecimalNumber *reslut = [left decimalNumberByDividingBy:right withBehavior:handler];
    return reslut;
}

+(NSDecimalNumber*)decimalNumberByRaisingToPowerWithleftDecimalNumber:(NSDecimalNumber*)left  Power:(NSUInteger)size DecimalNumberHandle:(NSDecimalNumberHandler*)handler{
    NSDecimalNumber *reslut = [left decimalNumberByRaisingToPower:size];
    return reslut;
}


#pragma mark - 比较方法
+(NSComparisonResult)decimalNumberCompareWithleftDecimalNumber:(NSDecimalNumber*)left right:(NSDecimalNumber*)right{
    NSComparisonResult reslut = [left compare:right ];
    return reslut;
}

@end
