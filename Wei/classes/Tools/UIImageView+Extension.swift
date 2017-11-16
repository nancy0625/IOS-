//
//  UIImageView+Extension.swift
//  Wei
//
//  Created by apple on 17/11/16.
//  Copyright © 2017年 Student. All rights reserved.
//

import UIKit
extension UIImageView{
    //便利构造函数
    convenience init(imageName: String) {
        self.init(image: UIImage(named: imageName))
    }
}
