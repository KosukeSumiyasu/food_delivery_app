//
//  LoginSecondViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/15.
//

import UIKit
import XLPagerTabStrip

class LoginSecondViewController: UIViewController, IndicatorInfoProvider{

    var itemInfo: IndicatorInfo = "First"
    
    @IBOutlet weak var login_mail_textform2: UITextField!
    @IBOutlet weak var login_passward_textform2: UITextField!

    override func viewDidLoad() {
        
        login_mail_textform2.placeholder = "email address"
        login_mail_textform2.addBorderBottom(height: 1.0, color: UIColor.lightGray)
        
        login_passward_textform2.placeholder = "Password"
        login_passward_textform2.addBorderBottom(height: 1.0, color: UIColor.lightGray)
        super.viewDidLoad()
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
}
