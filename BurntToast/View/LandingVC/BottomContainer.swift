//
//  BottomContainer.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/28/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit
import ChameleonFramework


@IBDesignable
class BottomContainer: UIView {

  override func prepareForInterfaceBuilder() {
    customizeView()
  }

    override func awakeFromNib() {
    super.awakeFromNib()

      customizeView()
  }

  func customizeView() {
    addBlurToView(blurColor: FlatBlueDark())
  }
}
