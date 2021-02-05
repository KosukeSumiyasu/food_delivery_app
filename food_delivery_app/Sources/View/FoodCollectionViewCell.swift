//
//  FoodCollectionViewCell.swift
//  food_delivery_app
//
//  Created by Yudai Watanabe on 2021/01/18.
//

import UIKit

final class FoodCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!

    override var reuseIdentifier: String? {
        "FoodCollectionViewCell"
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
