//
//  HistoryViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import UIKit

class HistoryViewController: UIViewController {
    @IBAction func tappedOdering(_ sender: UIButton) {
        let viewController = HomeViewController.instantiate()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
extension HistoryViewController: StoryboardInstantiable {}
