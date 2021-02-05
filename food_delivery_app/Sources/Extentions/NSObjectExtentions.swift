//
//  NSObjectExtentions.swift
//  food_delivery_app
//
//  Created by Kousuke Sumiyasu on 2021/01/26.
//

import Foundation

// MARK: - Class name
extension NSObject {
  static var className: String {
    return NSStringFromClass(self).components(separatedBy: ".").last!
  }
  var className: String {
    return type(of: self).className
  }
}

// MARK: - Bundle
extension NSObject {
  static var bundle: Bundle {
    return .init(for: self.self)
  }
}
