//
//  CustomNavigationBar.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import UIKit

class NavigationBarController: UIViewController  {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 影を消すには両方必要
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }


    // MARK: Overrides
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        if #available(iOS 11.0, *) {
//            for subview in self.subviews {
//                let stringFromClass = NSStringFromClass(subview.classForCoder)
//                if stringFromClass.contains("BarBackground") {
//                    subview.frame = self.bounds
//                } else if stringFromClass.contains("BarContentView") {
//                    let statusBarHeight = self.hiddenStatusBar ? 0 : UIApplication.shared.statusBarFrame.height
//                    subview.frame.Origin.y = statusBarHeight
//                    subview.frame.size.height = self.bounds.height - statusBarHeight
//                }
//            }
//        }
//    }
}
