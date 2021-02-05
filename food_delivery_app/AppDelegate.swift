//
//  AppDelegate.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/15.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        sleep(1)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)

        // Viewをコードで書いている場合
        let vc = LoginViewController.instantiate()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

}

