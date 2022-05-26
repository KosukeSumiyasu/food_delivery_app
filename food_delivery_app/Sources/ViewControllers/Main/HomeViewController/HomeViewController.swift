//
//  HomeViewController.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate, UITextFieldDelegate, UISearchBarDelegate {

    @IBOutlet weak var homeCollectionView:
        UICollectionView! {
        didSet {
            homeCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil),
                                         forCellWithReuseIdentifier: "HomeCollectionViewCell")
        }
    }



    
    @IBOutlet weak var foodSearchBar: UISearchBar! {
        didSet {
            foodSearchBar.backgroundImage = UIImage()
            foodSearchBar.placeholder = "search"
            foodSearchBar.showsScopeBar = true
        }
    }
    
    @IBOutlet weak var FoodSearchButton: UIButton! {
        didSet{
            FoodSearchButton.titleLabel?.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let edgeInsets = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 0)
        
        homeCollectionView.contentInset = edgeInsets
        homeCollectionView.scrollIndicatorInsets = edgeInsets
        
        self.navigationController?.navigationBar.frame = CGRect(x:0, y:0, width:UIScreen.main.bounds.size.width, height:100)

    }
    
    @IBAction func tappedButton(_ sender: Any) {
        
        let viewController = FoodInfoViewController.instantiate()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tappedFoodSearchButton(_ sender: Any) {
        
        let foodSearchViewController = FoodSearchViewController.instantiate()
        self.navigationController?.pushViewController(foodSearchViewController, animated: true)
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.enableTransparency()
        
    }
    
    let foodImages = ["food1","food2","food3","food4","food1","food2"]
    let foodNames = ["Veggie tomatomix","FishWith mix orange","Fried chiken m","Moi-moi and ekpa","Veggie tomatomix","FishWith mix orange"]
    let foodPrices = ["N1,900","N23,00","N19,00","N19,00","N1,900","N23,00"]
    
    // セルを返す
    func collectionView(_ homeCollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let homeCell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell",
             for: indexPath) as? HomeCollectionViewCell else {
            return UICollectionViewCell()
        }

        homeCell.imageView.image = UIImage(named: foodImages[indexPath.row])
        homeCell.foodName.text = foodNames[indexPath.row]
        homeCell.foodName.numberOfLines = 2
        homeCell.foodPrice.text = foodPrices[indexPath.row]
        homeCell.foodPrice.textColor = UIColor(red: 250/255.0, green: 74/255.0, blue: 12/255.0, alpha: 1.0)
        return homeCell
    }

    func collectionView(_ homeCollectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodImages.count;
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension HomeViewController: StoryboardInstantiable {}
