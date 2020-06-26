//
//  KRUtils.m
//  kreditbro
//
//  Created by 戴培琼 on 2019/4/5.
//  Copyright © 2019 lai. All rights reserved.
//

#import "KRUtils.h"

@implementation KRUtils
//金钱每三位加一个逗号
+(NSString *)countNumAndChangeformat:(NSString *)num
{
    if([num rangeOfString:@"."].location !=NSNotFound )  {
        NSString *losttotal = [NSString stringWithFormat:@"%.2f",[num floatValue]];//小数点后只保留两位
        NSArray *array = [losttotal componentsSeparatedByString:@"."];
        //小数点前:array[0]
        //小数点后:array[1]
        int count = 0;
        num = array[0];
        long long int a = num.longLongValue;
        while (a != 0)
        {
            count++;
            a /= 10;
        }
        NSMutableString *string = [NSMutableString stringWithString:num];
        NSMutableString *newstring = [NSMutableString string];
        while (count > 3) {
            count -= 3;
            NSRange rang = NSMakeRange(string.length - 3, 3);
            NSString *str = [string substringWithRange:rang];
            [newstring insertString:str atIndex:0];
            [newstring insertString:@"," atIndex:0];
            [string deleteCharactersInRange:rang];
        }
        [newstring insertString:string atIndex:0];
        
        NSString *lastStr = array[1];
        while ([lastStr hasSuffix:@"0"]) {
            lastStr = [lastStr substringToIndex:lastStr.length - 1];
        }
        NSMutableString *newString;
        if (lastStr.length != 0) {
            newString = [NSMutableString string];
            newString =[NSMutableString stringWithFormat:@"%@.%@",newstring,lastStr];
        }else {
            newString = newstring;
        }
        return newString;
    }else {
        int count = 0;
        long long int a = num.longLongValue;
        while (a != 0)
        {
            count++;
            a /= 10;
        }
        NSMutableString *string = [NSMutableString stringWithString:num];
        NSMutableString *newstring = [NSMutableString string];
        while (count > 3) {
            count -= 3;
            NSRange rang = NSMakeRange(string.length - 3, 3);
            NSString *str = [string substringWithRange:rang];
            [newstring insertString:str atIndex:0];
            [newstring insertString:@"," atIndex:0];
            [string deleteCharactersInRange:rang];
        }
        [newstring insertString:string atIndex:0];
        return newstring;
    }
}


+ (NSString *)changeTimeStemp:(NSString *)tiem formart:(NSString *) formart {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970: [tiem doubleValue]/1000];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:formart];
    dateFormat.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"GMT+0800"];
    return   [dateFormat stringFromDate:date];
}

//金钱每三位加一个逗号
+(NSString *)countNumAndChangeThreeformat:(NSString *)num
{
    double numD = num.doubleValue;
    if (numD == 0.0) {
        return @"0";
    }
    if([num rangeOfString:@"."].location !=NSNotFound)  {
        NSString *losttotal = [NSString stringWithFormat:@"%.3f",[num floatValue]];//小数点后只保留两位
        NSArray *array = [losttotal componentsSeparatedByString:@"."];
        //小数点前:array[0]
        //小数点后:array[1]
        int count = 0;
        num = array[0];
        long long int a = num.longLongValue;
        while (a != 0)
        {
            count++;
            a /= 10;
        }
        NSMutableString *string = [NSMutableString stringWithString:num];
        NSMutableString *newstring = [NSMutableString string];
        while (count > 3) {
            count -= 3;
            NSRange rang = NSMakeRange(string.length - 3, 3);
            NSString *str = [string substringWithRange:rang];
            [newstring insertString:str atIndex:0];
            [newstring insertString:@"," atIndex:0];
            [string deleteCharactersInRange:rang];
        }
        [newstring insertString:string atIndex:0];
        NSString *lastStr = array[1];
        while ([lastStr hasSuffix:@"0"]) {
            lastStr = [lastStr substringToIndex:lastStr.length - 1];
        }
        NSMutableString *newString;
        if (lastStr.length != 0) {
            newString = [NSMutableString string];
            newString =[NSMutableString stringWithFormat:@"%@.%@",newstring,lastStr];
        }else {
            newString = newstring;
        }
        return newString;
    }else {
        int count = 0;
        long long int a = num.longLongValue;
        while (a != 0)
        {
            count++;
            a /= 10;
        }
        NSMutableString *string = [NSMutableString stringWithString:num];
        NSMutableString *newstring = [NSMutableString string];
        while (count > 3) {
            count -= 3;
            NSRange rang = NSMakeRange(string.length - 3, 3);
            NSString *str = [string substringWithRange:rang];
            [newstring insertString:str atIndex:0];
            [newstring insertString:@"," atIndex:0];
            [string deleteCharactersInRange:rang];
        }
        [newstring insertString:string atIndex:0];
        return newstring;
    }
}





//获得字符串的高度
+(float) heightForString:(NSString *)value fontSize:(float)fontSize andWidth:(float)width
{
    
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]};
    CGSize textSize = [value boundingRectWithSize:CGSizeMake(width, 9999) options: NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    return ceil(textSize.height);
    /*
     //iOS6下的文本高度计算方式
     CGSize sizeToFit = [value sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(width, CGFLOAT_MAX) lineBreakMode:NSLineBreakByCharWrapping];//此处的换行类型（lineBreakMode）可根据自己的实际情况进行设置
     return sizeToFit.height;
     */
}



+ (UILabel *)creatLabelWithTitleColor:(UIColor *)color font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment {
   UILabel *lable = [[UILabel alloc] init];
    lable.textColor = color;
    lable.font = font;
    lable.textAlignment = textAlignment;
    return lable;
}

+ (NSString *)changeHtmlStringImgUrlWitHmtlString:(NSString *)htmlStr {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"<img\\ssrc[^>]*/>" options:NSRegularExpressionAllowCommentsAndWhitespace error:nil];
    
    NSArray *result = [regex matchesInString:htmlStr options:NSMatchingReportCompletion range:NSMakeRange(0, htmlStr.length)];
    NSString *html =  htmlStr;
    NSMutableDictionary *urlDicts = [[NSMutableDictionary alloc] init];
    for (NSTextCheckingResult *item in result) {
        NSString *imgHtml = [html substringWithRange:[item rangeAtIndex:0]];
        
        NSArray *tmpArray = nil;
        if ([imgHtml rangeOfString:@"src=\""].location != NSNotFound) {
            tmpArray = [imgHtml componentsSeparatedByString:@"src=\""];
        } else if ([imgHtml rangeOfString:@"src="].location != NSNotFound) {
            tmpArray = [imgHtml componentsSeparatedByString:@"src="];
        }
        
        if (tmpArray.count >= 2) {
            NSString *src = tmpArray[1];
            
            NSUInteger loc = [src rangeOfString:@"\""].location;
            if (loc != NSNotFound) {
                src = [src substringToIndex:loc];
                
                NSLog(@"正确解析出来的SRC为：%@", src);
                if (src.length > 0) {
                    
                    // 先将链接取个本地名字，且获取完整路径
//                    [urlDicts setObject:[NSString stringWithFormat:@"%@%@",Baseurl,src] forKey:src];
                }
            }
        }
    }
    
    // 遍历所有的URL，替换成本地的URL，并异步获取图片
    for (NSString *src in urlDicts.allKeys) {
        NSString *localPath = [urlDicts objectForKey:src];
        html = [html stringByReplacingOccurrencesOfString:src withString:localPath];
    }
    
    return [html copy];
}

//获取字符串的宽度
+(float) widthForString:(NSString *)value fontSize:(float)fontSize andHeight:(float)height
{
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]};
    CGSize textSize = [value boundingRectWithSize:CGSizeMake(9999, height) options: NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    return ceil(textSize.width);
    /*
     //iOS6下的文本高度计算方式
     CGSize sizeToFit = [value sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(CGFLOAT_MAX, height) lineBreakMode:NSLineBreakByWordWrapping];//此处的换行类型（lineBreakMode）可根据自己的实际情况进行设置
     return sizeToFit.width;
     */
}

/**
 修改字符串中数字颜色, 并返回对应富文本
 
 @param color 数字颜色, 包括小数
 @param normalColor 默认颜色
 @return 结果富文本
 */
+ (NSMutableAttributedString *)modifyString:(NSString *)orgStr andDigitalColor:(UIColor *)color normalColor:(UIColor *)normalColor
{
    NSRegularExpression *regular = [NSRegularExpression regularExpressionWithPattern:@"([0-9]\\d*\\.?\\d*)" options:0 error:NULL];
    
    NSArray<NSTextCheckingResult *> *ranges = [regular matchesInString:orgStr options:0 range:NSMakeRange(0, [orgStr length])];
    
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:orgStr attributes:@{NSForegroundColorAttributeName : normalColor}];
    
    for (int i = 0; i < ranges.count; i++) {
        [attStr setAttributes:@{NSForegroundColorAttributeName : color} range:ranges[i].range];
    }
    return attStr;
}



+ (NSString *)distanceTimeWithBeforeTime:(double)beTime
{
    NSTimeInterval now = [[NSDate date]timeIntervalSince1970];
    double distanceTime = now - beTime;
    NSString * distanceStr;
    NSDate * beDate = [NSDate dateWithTimeIntervalSince1970:beTime];
    NSDateFormatter * df = [[NSDateFormatter alloc]init];
    [df setDateFormat:@"HH:mm"];
    NSString * timeStr = [df stringFromDate:beDate];
    [df setDateFormat:@"dd"];
    NSString * nowDay = [df stringFromDate:[NSDate date]];
    NSString * lastDay = [df stringFromDate:beDate];
    distanceTime = fabs(distanceTime);
    if (distanceTime < 60) {//小于一分钟
        distanceStr = @"刚刚";
    }
    else if (distanceTime <60*60) {//时间小于一个小时
        distanceStr = [NSString stringWithFormat:@"%ld分钟前",(long)distanceTime/60];
    }
    else if(distanceTime <24*60*60 && [nowDay integerValue] == [lastDay integerValue]){//时间小于一天
        distanceStr = [NSString stringWithFormat:@"今天 %@",timeStr];
    }
    else if(distanceTime<24*60*60*2 && [nowDay integerValue] != [lastDay integerValue]){
        if ([nowDay integerValue] - [lastDay integerValue] ==1 || ([lastDay integerValue] - [nowDay integerValue] > 10 && [nowDay integerValue] == 1)) {
            distanceStr = [NSString stringWithFormat:@"昨天 %@",timeStr];
        }
        else{
            [df setDateFormat:@"MM-dd HH:mm"];
            distanceStr = [df stringFromDate:beDate];
        }
    }
    else if(distanceTime <24*60*60*365){
        [df setDateFormat:@"MM-dd HH:mm"];
        distanceStr = [df stringFromDate:beDate];
    }
    else{
        [df setDateFormat:@"yyyy-MM-dd HH:mm"];
        distanceStr = [df stringFromDate:beDate];
    }
    return distanceStr;
}

+ (NSString *)checkNumAndGetResult:(NSDictionary *)dict key:(NSString *)key isChange:(BOOL)isChange {
    if (!dict || !key) {
        return @"";
    }
    return  ([[dict objectForKey:key] doubleValue] == 0.0)&&(!isChange)  ? @"0" : [KRUtils countNumAndChangeThreeformat:[NSString stringWithFormat:@"%.4f", [[dict objectForKey:key] doubleValue]]];
}

+ (NSString *) formart:(NSDate *) date formart:(NSString *) formart{
    NSDateFormatter *tmp = [[NSDateFormatter alloc] init];
    [tmp setDateFormat:formart];
    return [tmp stringFromDate:date];
}

+ (BOOL)isEmptyString:(NSString *)string {
    if (!string) {//等价于if(string == ni||string == NULL)
         return YES;
    }
    
    if ([string isKindOfClass:[NSNull class]]) {//后台的数据可能是NSNull
        return YES;
    }
    if (!string.length) {//字符串长度
        return YES;
    }
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimedString = [string stringByTrimmingCharactersInSet:set];
    if ([trimedString length] == 0) {
        return YES;
    } else {
        return NO;
    }
    return NO;
}

+ (NSString *)getNotNullString:(NSString *)string {
    return [self isEmptyString:string] ? @"" : string;
}


+ (NSAttributedString *)getAttributedWithString:(NSString *)string WithLineSpace:(CGFloat)lineSpace kern:(CGFloat)kern font:(UIFont *)font{
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    //调整行间距
    paragraphStyle.lineSpacing = lineSpace;
    NSDictionary *attriDict = @{NSParagraphStyleAttributeName:paragraphStyle,NSKernAttributeName:@(kern),
                                NSFontAttributeName:font};
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:string attributes:attriDict];
    return attributedString;
}


+ (NSAttributedString *)getAttributedFromHtmlString:(NSString *)string font:(UIFont *)font {
    NSMutableAttributedString * attrStr = [[NSMutableAttributedString alloc]initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType} documentAttributes:nil error:nil];
    NSAttributedString * attrStr1 = [[NSAttributedString alloc]initWithData:[string dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType} documentAttributes:nil error:nil];
    [attrStr addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, attrStr1.length) ];
    return [attrStr copy];
}


//+ (UIViewController*)currentViewController {
//
//    UIViewController* vc = [UIApplication sharedApplication].keyWindow.rootViewController;
//    while (1) {
//        if ([vc isKindOfClass:[UINavigationController class]]) {
//            vc = ((UINavigationController*)vc).visibleViewController;
//        }
//        if ([vc isKindOfClass:[UITabBarController class]]) {
//            vc = ((UITabBarController*)vc).selectedViewController;
//        }
//        if ([vc isKindOfClass:[TabViewController class]]) {
//            vc = ((TabViewController*)vc).selectedViewController;
//        }
//
//        if ([vc isKindOfClass:[UINavigationController class]]) {
//            vc = ((UINavigationController*)vc).visibleViewController;
//        }
//
//        if (vc.presentedViewController) {
//            vc = vc.presentedViewController;
//        }else{
//            break;
//        }
//
//    }
//    return vc;
//
//}


+ (BOOL)validateNumber:(NSString*)number {
    BOOL res = YES;
    NSCharacterSet* tmpSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    int i = 0;
    while (i < number.length) {
        NSString * string = [number substringWithRange:NSMakeRange(i, 1)];
        NSRange range = [string rangeOfCharacterFromSet:tmpSet];
        if (range.length == 0) {
            res = NO;
            break;
        }
        i++;
    }
    return res;
}

+ (UIImage *) getImage:(NSString *) name{
    return [[UIImage imageNamed:name]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}



#pragma mark - 时间
// 获取当前时间戳
+(long)getNowTimeTimestamp{
   NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
   return  ([datenow timeIntervalSince1970]*1000);
}




/**
 返回头中间尾不同大小，颜色自定义的文本

 @param orgStr 要定义的文本
 @param hfont 头部文本大小
 @param preFont 默认文本大小
 @param numberFont 数字文本大小
 @return 返回头中间尾不同大小，颜色自定义的文本
 */
+ (NSMutableAttributedString *)modifyString:(NSString *)orgStr headFont:(UIFont *)hfont preFont:(UIFont *)preFont numberFont:(UIFont *)numberFont color:(UIColor *)color
{
    NSRegularExpression *regular = [NSRegularExpression regularExpressionWithPattern:@"([0-9]\\d*\\.?\\d*)" options:0 error:NULL];
    
    NSArray<NSTextCheckingResult *> *ranges = [regular matchesInString:orgStr options:0 range:NSMakeRange(0, [orgStr length])];
    
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:orgStr attributes:@{NSFontAttributeName : preFont}];
     [attStr setAttributes:@{NSFontAttributeName : hfont} range:NSMakeRange(0, 1)];

    for (int i = 0; i < ranges.count; i++) {
        [attStr setAttributes:@{NSFontAttributeName : numberFont} range:ranges[i].range];
    }
    return attStr;
}


@end
