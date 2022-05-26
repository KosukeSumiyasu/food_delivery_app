//
//  FoodSerachCollectionViewCell.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/02/12.
//

import UIKit

final class FoodSearchCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var food_name: UILabel!
    @IBOutlet weak var food_price: UILabel!
    
    @IBAction func tappedFoodButton(_ sender: Any) {
    }
    
    override var reuseIdentifier: String? {
        "FoodSearchCollectionViewCell"
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    


}
