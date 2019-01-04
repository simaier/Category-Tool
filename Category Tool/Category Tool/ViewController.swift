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
