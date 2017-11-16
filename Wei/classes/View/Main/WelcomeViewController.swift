//
//  WelcomeViewController.swift
//  Wei
//
//  Created by apple on 17/11/16.
//  Copyright © 2017年 Student. All rights reserved.
//

import UIKit
import SDWebImage

class WelcomeViewController: UIViewController {
    override func loadView() {
        //直接使用背景图像作为根视图，不用关心图像的缩放问题
        view = backImageView
        setupUI()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public lazy var backImageView: UIImageView = UIImageView(imageName: "ad_background")
    //头像
    public lazy var iconView: UIImageView = {
        let iv = UIImageView(imageName: "avatar_default_big")
        iv.layer.cornerRadius = 45
        iv.layer.masksToBounds = true
        return iv
    }()
    public lazy var welcomeLabel: UILabel = UILabel(title: "欢迎归来",fontSize: 18)
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 更新约束页面
        //snp.updatecontranints更新已经设置过的约束
         iconView.snp.updateConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom).offset(-view.bounds.height + 200)
        }
        //动画
        welcomeLabel.alpha = 0
        //参数解释：1／表示动画持续时间 2/动画执行前等待时间 3／弹力系数 4/初始速度 5/执行选项 6/动画效果代码块 7/ 动画执行完毕后的代码块
        UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 10, options: [], animations: {
            self.view.layoutIfNeeded()
        }) { (_) in
            
        }
    }
   
}
extension WelcomeViewController{
    public func setupUI(){
        //1. 添加控件
          view.addSubview(iconView)
        view.addSubview(welcomeLabel)
        //2.自动布局
        iconView.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(view.snp.bottom).offset(-200)
            make.width.equalTo(90)
            make.height.equalTo(90)
        }
        welcomeLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(iconView.snp.centerX)
            make.top.equalTo(iconView.snp.bottom).offset(16)
        }
        
    }
}
