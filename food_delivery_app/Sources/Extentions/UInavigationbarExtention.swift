//
//  UInavigationbarExtention.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/02/05.
//
import UIKit

extension UINavigationBar {
    /// ナビゲーションバーを透明化する
    func enableTransparency() {
        setBackgroundImage(UIImage(), for: .default)
        shadowImage = UIImage()
    }

    /// ナビゲーションバーを透明化を解除する
    func disableTransparency() {
        setBackgroundImage(nil, for: .default)
        shadowImage = nil
    }
    

    public override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 100)
    }

}
