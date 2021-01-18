//
//  FoodInfoViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/18.
//

import UIKit

// UICollectionViewDataSourceプロトコルを継承する

class FoodInfoViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var food_collectionView: UICollectionView!

    
    let food_img = ["food1","food2","food3","food4",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // セルの登録
        food_collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // 横スクロール
        let size = food_collectionView.frame.height
        layout.itemSize = CGSize(width: size, height: size)
        food_collectionView.collectionViewLayout = layout
    }
    // セルを返す
    func collectionView(_ food_collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let testcell:UICollectionViewCell = food_collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
//        print(testcell.contentView.viewWithTag(1) as Any)
//        let imageView = testcell.contentView.viewWithTag(1) as! UIImageView
        
        let imageView = UIImage(named: "food1")
        

        let cellImage = UIImage(named: food_img[indexPath.row])
        // UIImageをUIImageViewのimageとして設定
        testcell.backgroundimage = imageView
        
        testcell.backgroundColor = UIColor.blue

        return testcell
    }

    // セル数を返す(UITableViewでいうところの"tableView:numberOfRowsInSection:"
    func collectionView(_ food_collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return food_img.count;
    }
}
