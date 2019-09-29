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
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var lowerViewContainer: UIView!
  @IBOutlet weak var createAccountButton: UIButton!
  @IBOutlet weak var logInButton: UIButton!
  @IBOutlet weak var demonstrationButton: UIButton!
  



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        loadDesignChanges()
    }

  func loadDesignChanges() {
    createAccountButton.createShadow()
    logInButton.createShadow()
  }



}
