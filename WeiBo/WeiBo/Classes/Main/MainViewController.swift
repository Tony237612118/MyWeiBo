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
        
        // 初始化
        setup()
        
    }

   

}

private extension MainViewController {
    
    func setup() {
        addChildViewController(HomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(HomeViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(HomeViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(HomeViewController(), title: "我", imageName: "tabbar_profile")
    }
    
    
    // private私有方法，只有在同一文件中访问
    // 此方法名与系统方法同名
    // 但Swiftf支持方法重载，但OC不支持
    // 方法名一样，只在参数类型或参数个数不同，就支持方法重载tabbar_home_highlighted
    func addChildViewController(_ childController: UIViewController, title : String, imageName : String) {
        
        // 设置属性
        childController.title = title
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName+"_highlighted")
        
        // 包装导航控制器
        let childNav = UINavigationController.init(rootViewController: childController)
        
        // 成为TabBar控制器的子控制器
        addChildViewController(childNav)
        
    }
}
