//
//  HomeCollectionViewCell.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/02/08.
//

import UIKit

final class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodPrice: UILabel!
    
    @IBAction func tappedFoodButton(_ sender: Any) {
    }
    
    override var reuseIdentifier: String? {
        "HomeCollectionViewCell"
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
