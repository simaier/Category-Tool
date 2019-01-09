//
//  NSString_Extension.swift
//  NSString_Extension
//
//  Created by 范智超 on 2019/1/8.
//  Copyright © 2019 范智超. All rights reserved.
//

import Foundation


public protocol iVerify {
    
    /// 最终正则匹配结果
    ///
    /// - Parameters:
    ///   - regex: 传入正则字符串
    ///   - targetString: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func regexPatternResultWithRegex(regex : String, targetString : String) -> Bool
    
    /// 检测是否为有效电话号码
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsPhoneNumbeQualified(patternStr : String) -> Bool
    
    /// 检测是否为移动号
    /// 中国移动：China Mobile
    /// 中国移动号段：134[0-8],13[5-9],147,15[0-2],15[7-9],170[3|5|6],178,18[2-4],18[7-8]
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsCMMobilePhone(patternStr : String) -> Bool
    
    /// 检测是否为联通号
    /// 中国联通：China Unicom
    /// 中国联通号段：13[0-2],145,15[5-6],17[5-6],18[5-6],170[4|7|8|9],171
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsCUMobilePhone(patternStr : String) -> Bool
    
    /// 检测是否为电信号
    /// 中国电信：China Telecom
    /// 133,1349,149,153,173,177,180,181,189,170[0-2]
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsCTMobilePhone(patternStr : String) -> Bool
    
    /// 检测是否为有效邮箱
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsEmailQualified(patternStr : String) -> Bool
    
    /// 检测用户输入密码是否以字母开头，长度在6~18之间，只能包含字符、数字和下划线
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsPasswordQualified(patternStr : String) -> Bool
    
    /// 检测身份证号(15位或18位)
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsIdentityCardNumberQualified(patternStr : String) -> Bool
    
    /// 检测是否为有效的IP地址
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsIpAddress(patternStr : String) -> Bool
    
    /// 检测输入的是否全为数字
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsAllNumber(patternStr : String) -> Bool
    
    /// 检测由26个英文字母组成的字符串
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsLetter(patternStr : String) -> Bool
    
    /// 检测输入的是否是URL地址
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsUrl(patternStr : String) -> Bool
    
    /// 检测输入的是否是汉字
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsChinese(patternStr : String) -> Bool
    
    /// 检测车牌号
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsCarId(patternStr : String) -> Bool
    
    /// 检测字符串是否为空值
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsEmpty(patternStr : String) -> Bool
    
    /// 检测QQ号
    ///
    /// - Parameter patternStr: 传入需要检测的字符串
    /// - Returns: 返回检测结果 是 或者 不是
    func detectionIsQQ(patternStr : String) -> Bool
}

public extension iVerify
{
    
    /// 最终正则匹配结果
    func regexPatternResultWithRegex(regex : String, targetString : String) -> Bool
    {
        let predicate : NSPredicate = NSPredicate.init(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: targetString)
    }
    
    /// 检测是否为有效电话号码
    func detectionIsPhoneNumbeQualified(patternStr : String) -> Bool
    {
        let regex = "^(\\d+-)?(\\d{4}-?\\d{7}|\\d{3}-?\\d{8}|^\\d{7,8})(-\\d+)?$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测是否为移动号
    func detectionIsCMMobilePhone(patternStr : String) -> Bool
    {
        let regex = "^1(34[0-8]|70[356]|(3[5-9]|4[7]|5[0-27-9]|7[8]|8[2-47-8])\\d)\\d{7}$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测是否为联通号
    func detectionIsCUMobilePhone(patternStr : String) -> Bool
    {
        let regex = "^1(70[07-9]|(3[0-2]|4[5]|5[5-6]|7[15-6]|8[5-6])\\d)\\d{7}$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测是否为电信号
    func detectionIsCTMobilePhone(patternStr : String) -> Bool
    {
        let regex = "^1(34[9]|70[0-2]|(3[3]|4[9]|5[3]|7[37]|8[019])\\d)\\d{7}$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
        
    }
    
    /// 检测是否为有效邮箱
    func detectionIsEmailQualified(patternStr : String) -> Bool
    {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测用户输入密码是否以字母开头，长度在6~18之间，只能包含字符、数字和下划线
    func detectionIsPasswordQualified(patternStr : String) -> Bool
    {
        let regex = "^[a-zA-Z]\\w{5,17}$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测是否为真实身份证号
    func detectionIsIdentityCardNumberQualified(patternStr : String) -> Bool
    {
        if patternStr.count <= 0 {
            return false
        }
        let regex = "^(\\d{14}|\\d{17})(\\d|[xX])$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测是否为有效的IP地址
    func detectionIsIpAddress(patternStr : String) -> Bool
    {
        let regex = "^(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5]).(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测输入的是否全为数字
    func detectionIsAllNumber(patternStr : String) -> Bool
    {
        let regex = "^[0-9]*$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测输入的字符串是否由26个英文字母组成的
    func detectionIsLetter(patternStr : String) -> Bool
    {
        let regex = "^[A-Za-z]+$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测输入的是否为URL
    func detectionIsUrl(patternStr : String) -> Bool
    {
        let regex = "^[a-zA-z]+://(\\w+(-\\w+)*)(\\.(\\w+(-\\w+)*))*(\\?\\S*)?$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测输入的是否为汉字
    func detectionIsChinese(patternStr : String) -> Bool
    {
        let regex = "[\u{4e00}-\u{9fa5}]+"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测车牌号
    func detectionIsCarId(patternStr : String) -> Bool
    {
        let regex = "^([京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[a-zA-Z](([DF]((?![IO])[a-zA-Z0-9](?![IO]))[0-9]{4})|([0-9]{5}[DF]))|[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1})$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    /// 检测字符串是否为空值
    func detectionIsEmpty(patternStr : String) -> Bool
    {
        return patternStr.count == 0 ? true : false
    }
    
    /// 检测QQ号
    func detectionIsQQ(patternStr : String) -> Bool
    {
        let regex = "^[1-9]*[1-9][0-9]*$"
        return self.regexPatternResultWithRegex(regex: regex, targetString: patternStr)
    }
    
    
    
}
