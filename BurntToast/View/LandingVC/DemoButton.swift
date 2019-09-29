//
//  DemoButton.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/28/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit
import ChameleonFramework


@IBDesignable
class DemoButton: UIButton {

  override func prepareForInterfaceBuilder() {
    customizeView()
  }

    override func awakeFromNib() {
    super.awakeFromNib()

      customizeView()
  }

  func customizeView() {
    setTitleColor(ContrastColorOf(backgroundColor: FlatWhite(), returnFlat: true), for: .normal)
    titleLabel?.font = UIFont(name: "GillSans", size: 24)
    setTitle("SEE DEMONSTRATION", for: .normal)
  }

}

