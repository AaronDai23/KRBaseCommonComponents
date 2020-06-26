//
//  KRSwiftUtils.swift
//  kreditbro
//
//  Created by 戴培琼 on 2019/11/16.
//  Copyright © 2019 lai. All rights reserved.
//

import UIKit

class KRSwiftUtils: NSObject {
    // 创建label通用方法
    public static func creatCommentLabel( color:UIColor, font:UIFont, _ textAlignment: NSTextAlignment ) -> (UILabel) {
        let label = UILabel.init();
        label.textColor = color;
        label.font = font;
        label.textAlignment = textAlignment;
        return label;
    }
    
 // 获取两个时间相差天数 -1 就说明给的时间格式不对
   public static func dateInterval(startTime:String,endTime:String) -> Int{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date1 = dateFormatter.date(from: startTime),
            let date2 = dateFormatter.date(from: endTime) else {
                return -1
        }
        let components = NSCalendar.current.dateComponents([.day], from: date1, to: date2)
        return components.day!
    }
    
    // 根据时间戳获取对应时间 目前默认格式是yyyy-MM-dd
    public static func formart(time: Int) -> String {
        //时间戳
        let timeStamp = time/1000
        print("时间戳：\(timeStamp)")
        //转换为时间
        let timeInterval:TimeInterval = TimeInterval(timeStamp)
        let date = NSDate(timeIntervalSince1970: timeInterval)
        let dformatter = DateFormatter()
        dformatter.dateFormat = "yyyy-MM-dd"
        print("对应的日期时间：\(dformatter.string(from: date as Date))")
        return dformatter.string(from: date as Date)
    }
    
    // 获取当前日期
   public static func getNowTheTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateStr = dateFormatter.string(from: Date())
        return dateStr
    }
    
    // nowDay 是传入的需要计算的日期 获取相隔给定日期相隔几天的日期
    public static func getLastDay(_ nowDay: String, _ day: Int) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: nowDay)
        let nextTime: TimeInterval = TimeInterval(24*60*60*day)
        let lastDate = date?.addingTimeInterval(nextTime)
        let lastDay = dateFormatter.string(from: lastDate!)
        return lastDay
    }
}

// 返回整数三位逗号隔开，保留三位小数
extension String {
    func numberStr() -> String {
        //原始值
        let number = NSNumber(value: Double(self)!)
        
        //创建一个NumberFormatter对象
        let numberFormatter = NumberFormatter()
        numberFormatter.positiveFormat = "###,###.###" //设置格式
        //格式化
        let format = numberFormatter.string(from: number)!
        return format
    }
}


