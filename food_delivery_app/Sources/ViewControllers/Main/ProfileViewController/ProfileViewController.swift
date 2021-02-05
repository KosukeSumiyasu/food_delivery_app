//
//  ProfileViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var profile_img: UIImageView!
    
    @IBOutlet weak var mail_label: UILabel!
    @IBOutlet weak var phone_label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 245/255.0, green: 245/255.0, blue: 248/255.0, alpha: 1.0)
        
        mail_label.addBorderBottom(height: 0.5, color: UIColor.lightGray)
        phone_label.addBorderBottom(height: 0.5, color: UIColor.lightGray)
        


    }
}


extension ProfileViewController: StoryboardInstantiable {}
