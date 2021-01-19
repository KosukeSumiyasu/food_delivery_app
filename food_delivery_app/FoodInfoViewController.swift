//
//  FoodInfoViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/18.
//

import UIKit

// UICollectionViewDataSourceプロトコルを継承する

class FoodInfoViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var food_collectionView: UICollectionView! {
        didSet {
            food_collectionView.register(UINib(nibName: "FoodCollectionViewCell", bundle: nil),
                                         forCellWithReuseIdentifier: "FoodCollectionViewCell")
        }
    }

    
    let food_img = ["food1","food2","food3","food4",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // セルの登録
//        let layout = UICollectionViewFlowLayout()
//        food_collectionView.collectionViewLayout = layout
    }
    // セルを返す
    func collectionView(_ food_collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let foodCell = food_collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCollectionViewCell",
             for: indexPath) as? FoodCollectionViewCell else {
            return UICollectionViewCell()
        }

        foodCell.imageView.image = UIImage(named: food_img[indexPath.row])
        return foodCell
    }

    // セル数を返す(UITableViewでいうところの"tableView:numberOfRowsInSection:"
    func collectionView(_ food_collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return food_img.count;
    }
}
