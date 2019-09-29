//
//  UIView+Extensions.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/28/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.


import Foundation
import UIKit

extension UIView {


  public func roundedCorners() {
    layer.cornerRadius = 15
    clipsToBounds = true
  }



}

