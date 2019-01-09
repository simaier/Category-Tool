//
//  ViewController.swift
//  Category Tool
//
//  Created by 范智超 on 2019/1/3.
//  Copyright © 2019 范智超. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        judgeModel()
        color()
        time()
        iverify()
    }


}

//    MARK: - 机型判断示例用法
extension ViewController : iPhoneModelS
{
    func judgeModel()
    {
        if iPhone() == .iPhone4 {
            print("我是过气的iPhone")
        }else if iPhone() == .iPhoneX
        {
            print("我是现在超流行超贵的iPhone")
        }else
        {
            print("我是大家都在用的iPhone")
        }
    }
}

//    MARK: - 颜色分类示例用法
extension ViewController : iColor
{
    func color()
    {
        let redView = UIView.init(frame: CGRect.init(x: 100, y: 50, width: 150, height: 150))
        redView.backgroundColor = ColorFromHex(hex: "ff7845") // -> 16进制颜色转换不带透明度，不需要写#
        redView.backgroundColor = ColorFromHexWithAlpha(hex: "ff6523", alpha: 0.8) // -> 16进制颜色转换带透明度,不需要写#
        redView.backgroundColor = ColorWithRGB(red: 145, green: 111, blue: 261) // -> rgb颜色不带透明度，除过255了
        redView.backgroundColor = ColorWithRGBA(red: 124, green: 156, blue: 350, alpha: 0.8) // -> rgba颜色带透明度，除过255了
        view.addSubview(redView)
        
        
    }
}

//    MARK: - 时间格式化示例用法
extension ViewController : iDate
{
    func time()
    {
        let timeStr = "2018-03-05 09:20:05"
        let timeStr1 = "2019-01-06 15:57:05"
        
        let time0 = getNowTimeIntervalStr()  // -> 获取系统当前的时间戳(当前时间距1970的秒数，以毫秒为单位)
        SiMaiEr_Log(message: time0)
        
        let time1 = getTimeWithFormate(formate: "yyyy-MM-dd HH:mm")  // -> 按指定格式获取当前的时间
        SiMaiEr_Log(message: time1)
        
        let time2 = getNowTimeInterval()  // -> 获取当前的时间
        SiMaiEr_Log(message: time2)
        
        let time3 = returnTimeIntercal(dateStr: timeStr, oldFormate:"yyyy-MM-dd HH:mm:ss" , newFormate: "yyyy-MM-dd HH:mm")  // -> 按指定格式返回时间字符串
        SiMaiEr_Log(message: time3)
        
        let time4 = dateStringWithDelta(delta: 120)  // -> 得到指定时间差值的日期字符串(计量单位是秒S)
        SiMaiEr_Log(message: time4)
        
        let time5 = dateDescriptionWithTargetDate(datestr: timeStr, dateFormateStr: "yyyy-MM-dd HH:mm:ss") // -> 返回日期格式字符串
        SiMaiEr_Log(message: time5)
        let time6 = dateDescriptionWithTargetDate(datestr: timeStr1, dateFormateStr: "yyyy-MM-dd HH:mm:ss")
        SiMaiEr_Log(message: time6)
        let time7 = dateDescriptionWithTargetDate(datestr: time2, dateFormateStr: "yyyy-MM-dd HH:mm:ss")
        SiMaiEr_Log(message: time7)
        
        
        
    }
}

extension ViewController : iVerify
{
    func iverify()
    {
        SiMaiEr_Log(message: detectionIsPhoneNumbeQualified(patternStr: "18682002183"))
        SiMaiEr_Log(message: detectionIsCMMobilePhone(patternStr: "18682002183"))
        SiMaiEr_Log(message: detectionIsCUMobilePhone(patternStr: "18682002188"))
        SiMaiEr_Log(message: detectionIsCTMobilePhone(patternStr: "18682002111"))
        SiMaiEr_Log(message: detectionIsEmailQualified(patternStr: "zeromis@outlook.com"))
        SiMaiEr_Log(message: detectionIsPasswordQualified(patternStr: "smr1231"))
        SiMaiEr_Log(message: detectionIsIdentityCardNumberQualified(patternStr: "620302199504030656"))
        SiMaiEr_Log(message: detectionIsIpAddress(patternStr: "192.168.1.1"))
        SiMaiEr_Log(message: detectionIsAllNumber(patternStr: "123456"))
        SiMaiEr_Log(message: detectionIsLetter(patternStr: "abcfders"))
        SiMaiEr_Log(message: detectionIsUrl(patternStr: "http://www.baidu.com"))
        SiMaiEr_Log(message: detectionIsChinese(patternStr: "我是谁"))
        SiMaiEr_Log(message: detectionIsCarId(patternStr: "粤B9D8V8"))
        SiMaiEr_Log(message: detectionIsEmpty(patternStr: ""))
        SiMaiEr_Log(message: detectionIsQQ(patternStr: "450851460"))
    }
}
