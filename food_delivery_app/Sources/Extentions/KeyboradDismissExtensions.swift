//
//  KeyboradDismissExtensions.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/02/08.
//
import UIKit

extension UIViewController {
    
    func setDismissKeyboard() {
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
}
