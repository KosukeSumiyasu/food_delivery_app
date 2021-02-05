//
//  UITextFieldExtensions.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import UIKit

extension UITextField {
    func addBorderBottom(height: CGFloat, color: UIColor) {
        let border = CALayer()
        border.frame = CGRect(x: 0, y: self.frame.height - height+12, width: self.frame.width, height: height)
        border.backgroundColor = color.cgColor
        self.layer.addSublayer(border)
    }
}
