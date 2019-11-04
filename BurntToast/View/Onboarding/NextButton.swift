//
//  NextButton.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 11/3/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit
import ChameleonFramework

@IBDesignable
class NextButton: UIButton {

  override func prepareForInterfaceBuilder() {
    customizeView()
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    customizeView()
  }

  func customizeView() {
    backgroundColor = FlatWatermelonDark()
    setTitleColor(ContrastColorOf(backgroundColor: FlatWatermelon(), returnFlat: true), for: .normal)
    titleLabel?.font = UIFont(name: "GillSans-Bold", size: 17)
    roundedCorners()
  }
   

}
