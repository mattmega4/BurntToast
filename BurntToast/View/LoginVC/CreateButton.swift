//
//  CreateButton.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/28/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit
import ChameleonFramework


@IBDesignable
class CreateButton: UIButton {

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
    titleLabel?.font = UIFont(name: "GillSans-Bold", size: 25)
    setTitle("CREATE ACCOUNT", for: .normal)
    roundedCorners()
  }

  func blurrr(view: UIView) {
    let blurEffect = UIBlurEffect(style: .dark)
    let blurEffectView = UIVisualEffectView(effect: blurEffect)
    view.addSubview(blurEffectView)
  }


}
