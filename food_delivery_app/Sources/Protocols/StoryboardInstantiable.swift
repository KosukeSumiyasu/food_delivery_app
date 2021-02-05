//
//  StoryboardInstantiable.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import UIKit

protocol StoryboardInstantiable {}

extension StoryboardInstantiable where Self: UIViewController {
  static func instantiate() -> Self {
    let storyboard = UIStoryboard(name: className, bundle: bundle)
    return storyboard.instantiateInitialViewController() as! Self
  }
}
