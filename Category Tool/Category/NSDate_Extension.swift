//
//  NSDate_Extension.swift
//  NSDate_Extension
//
//  Created by 范智超 on 2019/1/4.
//  Copyright © 2019 范智超. All rights reserved.
//

import Foundation

public protocol iDate {
    
    /// 获取系统当前的时间戳，即当前时间距1970的秒数(以毫秒为单位)
    ///
    /// - Returns: 得到的时间戳
    func getNowTimeIntervalStr() -> String
    
    /// 按指定格式获取当前的时间
    ///
    /// - Parameter formate: 设置格式: yyyy-MM-dd HH:mm:ss
    /// - Returns: 指定格式的当前时间
    func getTimeWithFormate(formate : String) -> String
    
    /// 获取当前的时间
    ///
    /// - Returns: 得到的时间
    func getNowTimeInterval() -> String
    
    /// 按指定格式返回时间字符串
    ///
    /// - Parameters:
    ///   - dateStr: 日期字符串
    ///   - oldFormate: 旧格式
    ///   - newFormate: 新格式
    /// - Returns: 指定格式的时间字符串
    func returnTimeIntercal(dateStr : String, oldFormate : String, newFormate : String) -> String
    
    /// 日期和字符串之间的转换
    ///
    /// - Parameters:
    ///   - date: 日期字符串
    ///   - formate: 格式字符串
    /// - Returns: 转换后的字符串
    func getDateChangeStr(date : Date, formate : String) -> String
    
    /// 字符串和日期之间的转换
    ///
    /// - Parameters:
    ///   - dateStr: 格式字符串
    ///   - formate: 日期字符串
    /// - Returns: 转换后的字符串
    func getStrChangeDate(dateStr : String, formate : String) -> Date
    
    /// 返回指定时间差值的日期字符串
    ///
    /// - Parameter delta: 时间差值(计量单位为秒S)
    /// - Returns: 日期字符串， 格式：yyyy-MM-dd HH:mm:ss
    func dateStringWithDelta(delta : TimeInterval) -> String
    
    /// 返回日期格式字符串
    ///
    /// - Parameter datestr: 需要转换的时间点
    /// - Returns: 日期字符串
    /// -  注意: 一个日期字符串必须 与 它相应的日期格式对应，这个才能被系统识别为日期
    /*
            返回具体格式如下
                - 刚刚(一分钟内)
                - x分钟前(一小时内)
                - x小时前(当天)
                - MM-dd HH:mm(一年内)
                - yyyy-MM-dd HH:mm(更早期)
     */
    func dateDescriptionWithTargetDate(datestr : String, dateFormateStr : String) -> String
}

public extension iDate
{
    func getNowTimeIntervalStr() -> String
    {
        let date = NSDate.init(timeIntervalSinceNow: 0)
        /** 当前时间距1970的秒数。 *1000 是精确到毫秒，不*就是精确到秒 */
        let interval = date.timeIntervalSince1970 * 1000
        let timeStr = String.localizedStringWithFormat("%0.f", interval)
        
        return timeStr
    }
    
    func getTimeWithFormate(formate : String) -> String
    {
//        获取系统当前时间
        let currentDate = Date()
//        用于格式化NSDate对象
        let formateStr = DateFormatter()
//        设置格式：yyyy-MM-dd HH:mm:ss
        formateStr.dateFormat = formate
//        将NSDate 按 formate格式转成String
        let currentDateStr = formateStr.string(from: currentDate)
//        输出currentDateStr
        return currentDateStr
    }
    
    func getNowTimeInterval() ->String
    {
        return getTimeWithFormate(formate: "yyyy-MM-dd HH:mm:ss")
    }
    
    func returnTimeIntercal(dateStr : String, oldFormate : String, newFormate : String) -> String
    {
//        获取系统当前时间
        let oldDate = getStrChangeDate(dateStr: dateStr, formate: oldFormate)
//        用于格式化 Date对象
        let formatter = DateFormatter()
//        设置格式: yyyy-MM-dd HH:mm:ss
        formatter.dateFormat = newFormate
//        将 Date 按 formatter格式 转成 String
        let newDateStr = formatter.string(from: oldDate)
//        输出 newDateStr
        return newDateStr
    }
    
//    Date --> String
    func getDateChangeStr(date : Date, formate : String) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.timeZone = NSTimeZone.local
        dateFormatter.dateFormat = formate
        let destDateStr = dateFormatter.string(from: date)
        return destDateStr
    }
    
//    String --> Date
    func getStrChangeDate(dateStr : String, formate : String) -> Date
    {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.timeZone = NSTimeZone.local
        dateFormatter.dateFormat = formate
        let destDate : Date = dateFormatter.date(from: dateStr)!
        return destDate
    }
    
    func dateStringWithDelta(delta : TimeInterval) -> String
    {
        let date = Date.init(timeIntervalSinceNow: delta)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.string(from: date)
    }
    
    func dateDescriptionWithTargetDate(datestr : String, dateFormateStr : String) -> String
    {
//        获取当前时间
        let currentDate = Date()
//        目标时间
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormateStr
        let targetDate = formatter.date(from: datestr)
        
        let calendar = Calendar.current
        let returnFormatter = DateFormatter()
        if calendar.isDate(targetDate!, equalTo: currentDate, toGranularity: Calendar.Component.year) {
            if calendar.isDateInToday(targetDate!){
                let components = calendar.dateComponents(Set<Calendar.Component>([.minute,.hour]), from: targetDate!, to: currentDate)
                if components.hour == 0 {
                    if components.minute == 0 {
                        return "刚刚"
                    }else {
                        return String.localizedStringWithFormat("%ld分钟前", components.minute!)
                    }
                }else {
                    return String.localizedStringWithFormat("%ld小时前", components.hour!)
                }
                
            }else if calendar.isDateInYesterday(targetDate!) {
                return "昨天"
            }else {
                returnFormatter.dateFormat = "M-d"
                return returnFormatter.string(from: targetDate!)
            }
        }else {
            returnFormatter.dateFormat = "yyyy-M-d"
            return returnFormatter.string(from: targetDate!)
        }
        
    }
    
}
