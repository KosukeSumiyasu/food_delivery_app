//
//  LoginFirstViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/15.
//

import UIKit


class LoginFirstViewController: UIViewController {


    @IBOutlet weak var login_mail_textform1: UITextField!
    @IBOutlet weak var login_passward_textform1: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        login_mail_textform1.placeholder = "email address"
        login_mail_textform1.addBorderBottom(height: 1.0, color: UIColor.lightGray)
        
        login_passward_textform1.placeholder = "Password"
        login_passward_textform1.addBorderBottom(height: 1.0, color: UIColor.lightGray)
    }
}
