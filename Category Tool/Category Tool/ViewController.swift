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


