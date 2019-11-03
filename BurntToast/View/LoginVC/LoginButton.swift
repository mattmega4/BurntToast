//
//  LoginButton.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/28/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit
import ChameleonFramework

@IBDesignable
class LoginButton: UIButton {

  override func prepareForInterfaceBuilder() {
    customizeView()
  }

    override func awakeFromNib() {
    super.awakeFromNib()

      customizeView()
  }

  func customizeView() {
    backgroundColor = FlatBlue()
    setTitleColor(ContrastColorOf(backgroundColor: FlatBlue(), returnFlat: true), for: .normal)
    titleLabel?.font = UIFont(name: "GillSans-Bold", size: 25)

    setTitle("LOGIN", for: .normal)
    roundedCorners()
  }

}
