//
//  UIButton+Extensions.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/28/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
  public func createShadow() {
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
    layer.shadowRadius = 2
    layer.shadowOpacity = 0.5
    layer.masksToBounds = false
  }
}
