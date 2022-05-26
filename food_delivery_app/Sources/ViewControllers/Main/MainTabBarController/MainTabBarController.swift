//
//  MainTabBarController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    var window: UIWindow?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ① ViewControllerのインスタンスの空配列を作成
        var viewControllers: [UIViewController] = []
        
        // ② 各ViewControllerのインスタンスを作成
 
        let firstViewController = UINavigationController(rootViewController: HomeViewController.instantiate())
        let secondViewController = FavoriteViewController.instantiate()
        let thirdViewController = ProfileViewController.instantiate()
        let fourthViewController = HistoryViewController.instantiate()
        
        UITabBar.appearance().tintColor = UIColor(red:250.0/255.0,green: 74.0/255.0,blue: 12.0/255.0, alpha: 1)
        // 背景の透過
        UITabBar.appearance().backgroundImage = UIImage()
        // 境界線の透過
        UITabBar.appearance().shadowImage = UIImage()
        
        // ③ 各インスタンスのViewControllerに対して、アイコンなどのTabBarItemを設定
        firstViewController.tabBarItem.selectedImage = UIImage(named: "logo_home.svg")
        secondViewController.tabBarItem.selectedImage = UIImage(named: "logo_heart")
        thirdViewController.tabBarItem.selectedImage = UIImage(named: "logo_user")
        fourthViewController.tabBarItem.selectedImage = UIImage(named: "logo_history")
        
        // ④ 空配列に各ViewControllerをappend
        viewControllers.append(firstViewController)
        viewControllers.append(secondViewController)
        viewControllers.append(thirdViewController)
        viewControllers.append(fourthViewController)
        
        // ⑤ setViewControllersにviewControllersを渡す
        self.setViewControllers(viewControllers, animated: false)
        

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.enableTransparency()
    }
    


}
extension MainTabBarController: StoryboardInstantiable {}

