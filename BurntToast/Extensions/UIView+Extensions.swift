//
//  UIView+Extensions.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/28/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.


import Foundation
import UIKit
import ChameleonFramework

extension UIView {


  public func roundedCorners() {
    layer.cornerRadius = 15
    clipsToBounds = true
  }

  public func createCircle() {
    layer.cornerRadius = frame.size.width/2
    clipsToBounds = true
  }

  public func addBorderToView(color: UIColor, borderColor: CGColor, borderWidth: CGFloat) {
    backgroundColor = color
    layer.borderColor = borderColor
    layer.borderWidth = borderWidth
  }

  public func addBlurToView(blurColor: UIColor) {
    var blurEffect: UIBlurEffect
    if #available(iOS 10.0, *) {
      blurEffect = UIBlurEffect(style: .dark)
    } else {
      blurEffect = UIBlurEffect(style: .light)
    }
    let blurredEffectView = UIVisualEffectView(effect: blurEffect)
    blurredEffectView.frame = self.bounds
    backgroundColor = blurColor.withAlphaComponent(0.5)
    blurredEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    self.addSubview(blurredEffectView)
  }

  public func removeBlurFromView() {
    for subview in self.subviews {
      if subview is UIVisualEffectView {
        subview.removeFromSuperview()
      }
    }
  }



}

