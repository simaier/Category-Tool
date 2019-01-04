# Category-Tool
常用的工具分类

## 前言



## The first release - (机型判断)

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

## The first release - (颜色分类)

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
