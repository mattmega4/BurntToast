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
    self.createCircle()
    addBorderToView(color: FlatWhite(), borderColor: FlatBlack().cgColor, borderWidth: 5)
  }
}
