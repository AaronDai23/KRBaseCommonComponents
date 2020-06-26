//
//  ColorTools.h
//  EnterpriseWeb
//
//  Created by 李小斌 on 14-5-28.
//  Copyright (c) 2014年 EIMS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


//设置RGB颜色值
#define SETCOLOR(R,G,B,A)	[UIColor colorWithRed:(CGFloat)R/255 green:(CGFloat)G/255 blue:(CGFloat)B/255 alpha:A]

#define KColor  [ColorTools colorWithHexString:@"#195a9c"]
//#define KColor  [ColorTools colorWithHexString:@"#fd5353"]

//白色
//#define KColor  [ColorTools colorWithHexString:@"#ffffff"]

// 每个View背景色值
#define KblackgroundColor  [ColorTools colorWithHexString:@"#f0f0f0"]
// 登录框 边框色值
#define KlayerBorder  [ColorTools colorWithHexString:@"#d9d9d9"]
//绿色颜色值
#define GreenColor [ColorTools colorWithHexString:@"#18b15f"]
//粉红颜色值
#define PinkColor  [ColorTools colorWithHexString:@"#e34f4f"]
//蓝色字体颜色值
#define BluewordColor  [ColorTools colorWithHexString:@"#436EEE"]

// 每个View背景色值
#define KbackgroundColor  [ColorTools colorWithHexString:@"#edf1f4"]
//江西来融红色值
#define KRedColor  [ColorTools colorWithHexString:@"#fd5353"]
//江西来融蓝色值
#define KBlueColor  [ColorTools colorWithHexString:@"#2fbdf2"]
//江西来融绿色值
#define KGreenColor  [ColorTools colorWithHexString:@"#c7eccb"]
// 黑色
#define KBlackColor  [ColorTools colorWithHexString:@"#3a3a3a"]

#define klineStyleColor [ColorTools colorWithHexString:@"#f89c8e"]

#define KRClearColor              [UIColor clearColor]

#define KWhitekColor  [UIColor whiteColor]
// 线色
#define KLineColor     [ColorTools colorWithHexString:@"#c9d5db"]

#define KGrayColor  [UIColor grayColor]

#define KTableBackGroundyColor  [UIColor groupTableViewBackgroundColor]

#define KClearColor  [UIColor clearColor]

// 线色
#define KHomeBannerBGColor     [ColorTools colorWithHexString:@"#fb4a37"]

#define KHomeBannerLineColor     [ColorTools colorWithHexString:@"#f89c8e"]



@interface ColorTools : NSObject

/** 颜色转换 IOS中十六进制的颜色转换为UIColor **/
+ (UIColor *) colorWithHexString: (NSString *)color;

@end
