//
//  LoginSecondViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/15.
//

import UIKit

class LoginSecondViewController: UIViewController {

    @IBOutlet weak var login_mail_textform2: UITextField!
    @IBOutlet weak var login_passward_textform2: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        login_mail_textform2.placeholder = "email address"
        login_mail_textform2.addBorderBottom(height: 1.0, color: UIColor.lightGray)
        
        login_passward_textform2.placeholder = "Password"
        login_passward_textform2.addBorderBottom(height: 1.0, color: UIColor.lightGray)
    }
}
