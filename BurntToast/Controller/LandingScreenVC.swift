//
//  LandingScreenVC.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 9/28/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit
import ChameleonFramework

class LandingScreenVC: UIViewController {

  @IBOutlet weak var backgroundImageView: UIImageView!
  @IBOutlet weak var lowerViewContainer: UIView!

  @IBOutlet weak var logoView: UIView!


  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.

    loadDesignChanges()

    setNeedsStatusBarAppearanceUpdate()
    var preferredStatusBarStyle : UIStatusBarStyle {
      return .lightContent
    }
  }

  

  func loadDesignChanges() {

  }



}
