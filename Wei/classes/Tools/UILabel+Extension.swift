//
//  UILabel+Extension.swift
//  Wei
//
//  Created by apple on 17/11/16.
//  Copyright © 2017年 Student. All rights reserved.
//

import UIKit
extension UILabel{
    // 便利构造函数
    /**
     title : title
     fontSize : fontSize 默认字体大小14
     color : color 默认颜色深灰色
     returns : UILabel
     */
    
    convenience init(title: String,fontSize: CGFloat = 14,color: UIColor = UIColor.darkGray) {
        self.init()
        text = title
        textColor = color
        font = UIFont.systemFont(ofSize: fontSize)
        numberOfLines = 0 //换行
        textAlignment = NSTextAlignment.center //居中
    }
}
