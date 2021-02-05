//
//  LoginFirstViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/15.
//

import UIKit
import XLPagerTabStrip


class LoginFirstViewController: UIViewController, IndicatorInfoProvider, UITextFieldDelegate {

    var itemInfo: IndicatorInfo = "First"


    @IBOutlet weak var login_mail_textform1: UITextField!
    @IBOutlet weak var login_passward_textform1: UITextField!
    
    @IBAction func tappedLoginButton(_ sender: Any) {
        let viewController = MainTabBarController.instantiate()
        present(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        
        login_mail_textform1.placeholder = "email address"
        login_mail_textform1.addBorderBottom(height: 1.0, color: UIColor.lightGray)
        
        login_passward_textform1.placeholder = "Password"
        login_passward_textform1.addBorderBottom(height: 1.0, color: UIColor.lightGray)
        super.viewDidLoad()
        login_mail_textform1.delegate = self
        login_passward_textform1.delegate = self
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる
        textField.resignFirstResponder()
        return true
    }
}

extension LoginFirstViewController: StoryboardInstantiable {}


