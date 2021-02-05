//
//  LoginViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/15.
//

import UIKit
import XLPagerTabStrip


class LoginViewController: ButtonBarPagerTabStripViewController {


//    override func viewDidLoad() {
//
//        super.viewDidLoad()
//    }
//
//    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
//        //管理されるViewControllerを返す処理
//        let firstVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "First")
//        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Second")
//        return [firstVC, secondVC]
//    }
    let graySpotifyColor = UIColor(red: 21/255.0, green: 21/255.0, blue: 24/255.0, alpha: 1.0)
    let darkGraySpotifyColor = UIColor(red: 19/255.0, green: 20/255.0, blue: 20/255.0, alpha: 1.0)

    override func viewDidLoad() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = UIColor(red: 250/255.0, green: 74/255.0, blue: 12/255.0, alpha: 1.0)
        settings.style.buttonBarItemFont = UIFont(name: "HelveticaNeue-Light", size:14) ?? UIFont.systemFont(ofSize: 14)
        settings.style.selectedBarHeight = 3.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        
        settings.style.buttonBarLeftContentInset = 20
        settings.style.buttonBarRightContentInset = 20

        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = .black
        }
        super.viewDidLoad()
    }

    // MARK: - PagerTabStripDataSource

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {

//        let storyboard: UIStoryboard = self.storyboard!
//        let storyboard: UIStoryboard = self.storyboard!
//        let child_1 = UIStoryboard(name: "LoginFirstViewController", bundle: nil).instantiateViewController(withIdentifier: "First")
//
//        let child_2 = UIStoryboard(name: "LoginSecondViewController", bundle: nil).instantiateViewController(withIdentifier: "Second")
        let child_1 = LoginFirstViewController.instantiate()

        let child_2 = LoginSecondViewController.instantiate()
    
        return [child_1, child_2]
    }
}

extension LoginViewController: StoryboardInstantiable {}
