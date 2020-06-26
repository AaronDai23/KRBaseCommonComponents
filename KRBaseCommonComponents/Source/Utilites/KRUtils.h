//
//  KRUtils.h
//  kreditbro
//
//  Created by 戴培琼 on 2019/4/5.
//  Copyright © 2019 lai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KRUtils : NSObject
/// 给定数字，获取整数部分每三位一个逗号，小数点后两位做保留
+ (NSString *)countNumAndChangeformat:(NSString *)num;
/// 给定数字，获取整数部分每三位一个逗号，小数点后三位做保留
+ (NSString *)countNumAndChangeThreeformat:(NSString *)num;
//格式化日期 制定格式
+ (NSString *) formart:(NSDate *) date formart:(NSString *) formart;
/// 根据时间戳和格式获取时间
+ (NSString *)changeTimeStemp:(NSString *)tiem formart:(NSString *) formart;
/// 取字符串高度
+ (float) heightForString:(NSString *)value fontSize:(float)fontSize andWidth:(float)width;
/// 生成标签
+ (UILabel *)creatLabelWithTitleColor:(UIColor *)color font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment;
/// 拼接html 图片url没有host的问题
+ (NSString *)changeHtmlStringImgUrlWitHmtlString:(NSString *)htmlStr;

+ (float) widthForString:(NSString *)value fontSize:(float)fontSize andHeight:(float)height;

/**
 修改字符串中数字颜色, 并返回对应富文本
 
 @param color 数字颜色, 包括小数
 @param normalColor 默认颜色
 @return 结果富文本
 */
+ (NSMutableAttributedString *)modifyString:(NSString *)orgStr andDigitalColor:(UIColor *)color normalColor:(UIColor *)normalColor;
/**
 根据时间戳获取距离现在的状态(刚刚,分钟前,今天,昨天)
 
 @param beTime 时间戳
 @return 结果富文本
 */
+ (NSString *)distanceTimeWithBeforeTime:(double)beTime;


/**
 <#Description#>

 @param dict <#dict description#>
 @param key <#key description#>
 @param isChange YES 表示当是0，返回0.000 NO返回0
 @return <#return value description#>
 */
+ (NSString *)checkNumAndGetResult:(NSDictionary *)dict key:(NSString *)key isChange:(BOOL)isChange;


/**
 判断字符串是否是空

 @param string 字符串
 @return bool YES表示是空
 */
+ (BOOL)isEmptyString:(NSString *)string;

/**
 获取非nil字符串
 
 @param string 字符串
 @return NSString
 */
+ (NSString *)getNotNullString:(NSString *)string;

/**
   设置行间距和字间距
 *  @param string    字符串
 *  @param lineSpace 行间距
 *  @param kern      字间距
 *  @param font      字体大小
 *
 *  @return 富文本
 */
+ (NSAttributedString *)getAttributedWithString:(NSString *)string WithLineSpace:(CGFloat)lineSpace kern:(CGFloat)kern font:(UIFont *)font;

/**
    获取html内容的文字内容
 *  @param string    字符串
 *  @param font      字体大小
 *
 *  @return 富文本
 */
+ (NSAttributedString *)getAttributedFromHtmlString:(NSString *)string font:(UIFont *)font;

+ (UIViewController*)currentViewController;


/**
 校验字符串是否全是数字

 @param number 校验字符串
 @return 返回校验结果 YES就是数字
 */
+ (BOOL)validateNumber:(NSString*)number;


/**
 返回图片内容

 @param name 资源l名称
 @return 返回图片内容
 */
+ (UIImage *) getImage:(NSString *) name;


+(long)getNowTimeTimestamp;


/**
 返回头中间尾不同大小，颜色自定义的文本
 
 @param orgStr 要定义的文本
 @param hfont 头部文本大小
 @param preFont 默认文本大小
 @param numberFont 数字文本大小
 @return 返回头中间尾不同大小，颜色自定义的文本
 */
+ (NSMutableAttributedString *)modifyString:(NSString *)orgStr headFont:(UIFont *)hfont preFont:(UIFont *)preFont numberFont:(UIFont *)numberFont color:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
