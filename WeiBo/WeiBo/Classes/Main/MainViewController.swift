//
//  MainViewController.swift
//  WeiBo
//
//  Created by Tony on 2017/12/20.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置颜色，假如每个控制器都是这样颜色，那应该设置全局的颜色
        // tabBar.tintColor = UIColor.orange
        
        mySelfLog(message: "123")
        
        // 创建子控制器
        let childVc = UIViewController()

        // 设置属性
        childVc.title = "首页"
        childVc.tabBarItem.image = UIImage(named: "tabbar_home")
        childVc.tabBarItem.selectedImage = UIImage(named: "tabbar_home_highlighted")
        
        // 包装导航控制器
        let childNav = UINavigationController.init(rootViewController: childVc)
        
        // 成为TabBar控制器的子控制器
        addChildViewController(childNav)
        
        
    }




}
