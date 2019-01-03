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
