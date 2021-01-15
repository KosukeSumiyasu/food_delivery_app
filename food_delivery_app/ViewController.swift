//
//  ViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/15.
//

import UIKit

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let v = Int("000000" + hex, radix: 16) ?? 0
        let r = CGFloat(v / Int(powf(256, 2)) % 256) / 255
        let g = CGFloat(v / Int(powf(256, 1)) % 256) / 255
        let b = CGFloat(v / Int(powf(256, 0)) % 256) / 255
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha, 0), 1))
    }
}

extension UITextField {
    func addBorderBottom(height: CGFloat, color: UIColor) {
        let border = CALayer()
        border.frame = CGRect(x: 0, y: self.frame.height - height+12, width: self.frame.width, height: height)
        border.backgroundColor = color.cgColor
        self.layer.addSublayer(border)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var text_email: UITextField!
    @IBOutlet weak var text_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        

//      textfield add border
        text_email.placeholder = "email address"
        text_email.addBorderBottom(height: 1.0, color: UIColor.lightGray)
        
        text_password.placeholder = "Password"
        text_password.addBorderBottom(height: 1.0, color: UIColor.lightGray)
        

    }


}

