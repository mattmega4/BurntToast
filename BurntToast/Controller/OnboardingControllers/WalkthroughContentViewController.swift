//
//  WalkthroughContentViewController.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 11/3/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit
import ChameleonFramework

class WalkthroughContentViewController: UIViewController {

  // MARK: - Outlets

  @IBOutlet var containerView: UIView!
  @IBOutlet weak var contentImageView: UIImageView!
  @IBOutlet weak var headingLabel: UILabel!
  @IBOutlet weak var subHeadingLabel: UILabel!

  // MARK: - Properties

  var index = 0
  var heading = ""
  var subHeading = ""
  var imageFile = ""


    override func viewDidLoad() {
        super.viewDidLoad()

      containerView.backgroundColor = FlatSand()
      

      headingLabel.numberOfLines = 0
      subHeadingLabel.numberOfLines = 0

      headingLabel.text = heading
      subHeadingLabel.text = subHeading
      contentImageView.image = UIImage(named: imageFile)
    }
    

}
