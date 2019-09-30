//
//  LogoView.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/30/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//


import UIKit
import ChameleonFramework


@IBDesignable
class LogoView: UIView {

  override func prepareForInterfaceBuilder() {
    customizeView()
  }

    override func awakeFromNib() {
    super.awakeFromNib()

      customizeView()
  }

  func customizeView() {
    backgroundColor = FlatWhite()
    self.createCircle()
    layer.borderWidth = 5
    layer.borderColor = FlatBlack().cgColor //red.cgColor
  }
}
