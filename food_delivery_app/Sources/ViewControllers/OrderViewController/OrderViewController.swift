//
//  OrderViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//


import UIKit

class OrderViewController: UIViewController {

    
    @IBAction func tappedBackButton(_ sender: Any) {
//        let viewController = FoodInfoViewController.instantiate()
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
extension OrderViewController: StoryboardInstantiable {}
