//
//  LoginViewController.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 11/1/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit
import ChameleonFramework

class LoginViewController: UIViewController {

  @IBOutlet weak var backgroundImageView: UIImageView!
  
  @IBOutlet weak var lowerViewContainer: BottomContainer!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    setNeedsStatusBarAppearanceUpdate()
    var preferredStatusBarStyle : UIStatusBarStyle {
      return .lightContent
    }
  }


}
