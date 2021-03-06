//
//  FoodInfoViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/18.
//

import UIKit

// UICollectionViewDataSourceプロトコルを継承する

class FoodInfoViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var food_collectionView:
        
        UICollectionView! {
        didSet {
            food_collectionView.register(UINib(nibName: "FoodCollectionViewCell", bundle: nil),
                                         forCellWithReuseIdentifier: "FoodCollectionViewCell")
        }
    }
    @IBAction func tappedBackButton(_ sender: Any) {
        let viewController = HomeViewController.instantiate()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tappedCartButoon(_ sender: Any) {
        let viewController = OrderViewController.instantiate()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    let food_img = ["food1","food2","food3","food4",]
    
    override func viewDidLoad() {

        super.viewDidLoad()
//        navigationController?.setNavigationBarHidden(false, animated: true)
//        self.navigationController?.popToRootViewController(animated: true)
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        navigationController?.setNavigationBarHidden(false, animated: true)
        // セルの登録
//        let layout = UICollectionViewFlowLayout()
//        food_collectionView.collectionViewLayout = layout
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
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
        let count = food_img.count
        pageControl.numberOfPages = count
        pageControl.isHidden = !(count > 1)
        return food_img.count;
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl?.currentPage = Int(scrollView.contentOffset.x)/Int(scrollView.frame.width)
        
    }
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        pageControl?.currentPage = Int(scrollView.contentOffset.x)/Int(scrollView.frame.width)
        
    }


}

extension FoodInfoViewController: StoryboardInstantiable {}
