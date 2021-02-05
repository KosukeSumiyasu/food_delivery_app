//
//  HomeViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func tappedButton(_ sender: Any) {
        let viewController = FoodInfoViewController.instantiate()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
}

extension HomeViewController: StoryboardInstantiable {}
