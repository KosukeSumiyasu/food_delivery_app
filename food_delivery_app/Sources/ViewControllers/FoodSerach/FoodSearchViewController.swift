//
//  FoodSearchViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/02/12.
//

import UIKit

class FoodSearchViewController: UIViewController {

    
    @IBAction func tappedBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var NavigationBar: UINavigationItem!
    
    
    @IBOutlet weak var foodSerachCollectionView:
        UICollectionView! {
        didSet {

            foodSerachCollectionView.register(UINib(nibName: "FoodSearchCollectionViewCell", bundle: nil),
                                         forCellWithReuseIdentifier: "FoodSearchCollectionViewCell")
            foodSerachCollectionView.backgroundColor = UIColor(red: 249/255.0, green: 249/255.0, blue: 249/255.0, alpha: 1.0)

            // レイアウト設定
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: 156, height: 252)
            layout.minimumInteritemSpacing = 35
            layout.minimumLineSpacing = 16
            layout.sectionInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
            foodSerachCollectionView.collectionViewLayout = layout
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodSerachCollectionView.delegate = self
        foodSerachCollectionView.dataSource = self
        setSearchBar()
        NavigationBar.accessibilityElementsHidden = true


    }
    
    let foodImg = ["food1","food2","food3","food4","food1","food2"]
    let foodName = ["Veggie tomatomix","FishWith mix orange","Fried chiken m","Moi-moi and ekpa","Veggie tomatomix","FishWith mix orange"]
    let foodPrice = ["N1,900","N23,00","N19,00","N19,00","N1,900","N23,00"]
    


}

extension FoodSearchViewController: UISearchBarDelegate {
    //検索バーの設置
    func setSearchBar() {
        // NavigationBarにSearchBarをセット
        if let navigationBarFrame = self.navigationController?.navigationBar.bounds {
            let searchBar: UISearchBar = UISearchBar(frame: navigationBarFrame)
            searchBar.delegate = self
            searchBar.placeholder = "search"
            searchBar.autocapitalizationType = UITextAutocapitalizationType.none
            navigationItem.titleView = searchBar
            navigationItem.titleView?.frame = searchBar.frame
            
        }
    }
    
    //検索バーで入力する時
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        //キャンセルボタンを表示
        searchBar.setShowsCancelButton(true, animated: true)
        return true
    }
    
    //検索バーのキャンセルがタップされた時
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        //キャンセルボタンを非表示
        searchBar.showsCancelButton = false
        //キーボードを閉じる
        searchBar.resignFirstResponder()
    }
    
    //検索バーでEnterが押された時
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {

    }
}

extension FoodSearchViewController: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    // セルを返す
    func collectionView(_ food_collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let foodCell = food_collectionView.dequeueReusableCell(withReuseIdentifier: "FoodSearchCollectionViewCell",
             for: indexPath) as? FoodSearchCollectionViewCell else {
            return UICollectionViewCell()
        }

        foodCell.imageView.image = UIImage(named: foodImg[indexPath.row])
        
        let rect:CGRect = CGRect(x:0, y:0, width:128, height:128)
        foodCell.imageView.frame = rect
        foodCell.food_name.text = foodName[indexPath.row]
        foodCell.food_name.numberOfLines = 2
        foodCell.food_name.font = UIFont.boldSystemFont(ofSize: 22)
        foodCell.food_price.text = foodPrice[indexPath.row]
        foodCell.food_price.textColor = UIColor(red: 250/255.0, green: 74/255.0, blue: 12/255.0, alpha: 1.0)
        foodCell.food_name.font = UIFont.boldSystemFont(ofSize: 17)
        return foodCell
    }

    func collectionView(_ food_collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodImg.count;
    }
    
    
    func collectionView(_ food_collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
//        let identifier:String = "sectionHeader"
        //ヘッダーの場合
        let Section = food_collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "sectionHeader", for: indexPath)
        Section.cornerRadius = 30

        return Section
        
    }
    
 
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.view.bounds.width, height: 100)
    }
    
}

extension FoodSearchViewController: StoryboardInstantiable {}
