# Category-Tool
常用的工具分类

## 前言



## The first release - (机型判断)  2019.01.03

## Adding SmrCategory to your project (添加 SmrCategory 到你的项目)

[CocoaPods](http://cocoapods.org) is the recommended way to add `SmrCategory` to your project.

1. Add a pod entry for `SmrCategory` to your Podfile </br>
```
pod 'SmrCategory'
```
2. Install the pod(s) by running </br>
```
pod install
```
3. Include `SmrCategory`once you need it with </br>
```
import SmrCategory
```
4. Include iPhoneModelS once you need it with </br>
```
class ViewController: UIViewController,iPhoneModelS {

override func viewDidLoad() {
super.viewDidLoad()

if iPhone() == .iPhone4
{
print("我是iPhone4")
}else if iPhone() == .iPhoneX
{
print("我是iphonex")
}else
{
print("我是iphone")
}
}

}
```

## Example
```
if iPhone() == .iPhone4
{
print("我是iPhone4")
}
```

## The second release - (颜色分类) 2019.01.04

## 实现方法
```
/// 16进制转UIColor
///
/// - Parameter hex: 16进制颜色字符串
/// - Returns: 转换后的颜色
func ColorFromHex(hex : String) -> UIColor

/// 16进制转UIColor(带alpha)
///
/// - Parameters:
///   - hex: 16进制颜色字符串
///   - alpha: 透明度
/// - Returns: 转换后的颜色
func ColorFromHexWithAlpha(hex : String, alpha : CGFloat) -> UIColor



/// 颜色快速方法(带alpha)
///
/// - Parameters:
///   - red: red / 255.0
///   - green: green / 255.0
///   - blue: blue / 255.0
///   - alpha: 透明度
func ColorWithRGBA(red : CGFloat, green : CGFloat, blue : CGFloat, alpha : CGFloat) -> UIColor


/// 颜色快速方法
///
/// - Parameters:
///   - red: red / 255.0
///   - green: green / 255.0
///   - blue: blue / 255.0
func ColorWithRGB(red : CGFloat, green : CGFloat, blue : CGFloat) -> UIColor

```

## Adding SmrCategory to your project (添加 SmrCategory 到你的项目)

[CocoaPods](http://cocoapods.org) is the recommended way to add `SmrCategory` to your project.

1. Add a pod entry for `SmrCategory` to your Podfile </br>
```
pod 'SmrCategory'
```
2. Install the pod(s) by running </br>
```
pod install
```
3. Include `SmrCategory`once you need it with </br>
```
import SmrCategory
```
4. Include iColor once you need it with </br>
```
class ViewController: UIViewController,iColor {

override func viewDidLoad() {
super.viewDidLoad()

let redview = UIView.init(frame: CGRect.init(x: 50, y: 50, width: 150, height: 150))
redview.backgroundColor = ColorFromHex(hex: "FFB6C1")
redview.backgroundColor = ColorFromHexWithAlpha(hex: "FFB6C1", alpha: 0.3)
redview.backgroundColor = ColorWithRGB(red: 225, green: 214, blue: 115)
redview.backgroundColor = ColorWithRGBA(red: 123, green: 154, blue: 112, alpha: 0.7)
view.addSubview(redview)

}
```

## Example
```
redview.backgroundColor = ColorFromHex(hex: "FFB6C1")
redview.backgroundColor = ColorFromHexWithAlpha(hex: "FFB6C1", alpha: 0.3)
redview.backgroundColor = ColorWithRGB(red: 225, green: 214, blue: 115)
redview.backgroundColor = ColorWithRGBA(red: 123, green: 154, blue: 112, alpha: 0.7)

```


## The third release - (时间格式化) 2019.01.07

## 实现方法
```
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

```

## Adding SmrCategory to your project (添加 SmrCategory 到你的项目)

[CocoaPods](http://cocoapods.org) is the recommended way to add `SmrCategory` to your project.

1. Add a pod entry for `SmrCategory` to your Podfile </br>
```
pod 'SmrCategory'
```
2. Install the pod(s) by running </br>
```
pod install
```
3. Include `SmrCategory`once you need it with </br>
```
import SmrCategory
```
4. Include iDate once you need it with </br>
```
class ViewController: UIViewController,iDate {

var timeStr = String()
var timeStr1 = String()


override func viewDidLoad() {
super.viewDidLoad()

timeStr = "2018-03-05 09:20:05"
timeStr1 = "2019-01-06 15:57:06"

let time0 = getNowTimeInterval()
SiMaiEr_Log(message: time0)

let time1 = getTimeWithFormate(formate: "yyyy-MM-dd HH:mm")
SiMaiEr_Log(message: time1)

let time2 = getNowTimeInterval()
SiMaiEr_Log(message: time2)

let time3 = returnTimeIntercal(dateStr: timeStr, oldFormate:"yyyy-MM-dd HH:mm:ss" , newFormate: "yyyy-MM-dd HH:mm")
SiMaiEr_Log(message: time3)

let time4 = dateStringWithDelta(delta: 120)
SiMaiEr_Log(message: time4)

let time5 = dateDescriptionWithTargetDate(datestr: timeStr, dateFormateStr: "yyyy-MM-dd HH:mm:ss")
SiMaiEr_Log(message: time5)
let time6 = dateDescriptionWithTargetDate(datestr: timeStr1, dateFormateStr: "yyyy-MM-dd HH:mm:ss")
SiMaiEr_Log(message: time6)
let time7 = dateDescriptionWithTargetDate(datestr: time0, dateFormateStr: "yyyy-MM-dd HH:mm:ss")
SiMaiEr_Log(message: time7) 
}


}

```

## Example
```
let time0 = getNowTimeInterval()
SiMaiEr_Log(message: time0)

let time1 = getTimeWithFormate(formate: "yyyy-MM-dd HH:mm")
SiMaiEr_Log(message: time1)

let time2 = getNowTimeInterval()
SiMaiEr_Log(message: time2)

let time3 = returnTimeIntercal(dateStr: timeStr, oldFormate:"yyyy-MM-dd HH:mm:ss" , newFormate: "yyyy-MM-dd HH:mm")
SiMaiEr_Log(message: time3)

let time4 = dateStringWithDelta(delta: 120)
SiMaiEr_Log(message: time4)

let time5 = dateDescriptionWithTargetDate(datestr: timeStr, dateFormateStr: "yyyy-MM-dd HH:mm:ss")
SiMaiEr_Log(message: time5)
let time6 = dateDescriptionWithTargetDate(datestr: timeStr1, dateFormateStr: "yyyy-MM-dd HH:mm:ss")
SiMaiEr_Log(message: time6)
let time7 = dateDescriptionWithTargetDate(datestr: time0, dateFormateStr: "yyyy-MM-dd HH:mm:ss")
SiMaiEr_Log(message: time7)

```
