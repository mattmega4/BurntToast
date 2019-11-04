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
  var headingColor: UIColor?

  var subHeading = ""
  var subHeadingColor: UIColor?

  var imageFile = ""
  var backgroundColor: UIColor?
  var textColor: UIColor?


    override func viewDidLoad() {
        super.viewDidLoad()


      headingLabel.numberOfLines = 0
      subHeadingLabel.numberOfLines = 0

      headingLabel.text = heading
      headingLabel.textColor = textColor

      subHeadingLabel.text = subHeading
      subHeadingLabel.textColor = textColor

      contentImageView.image = UIImage(named: imageFile)
      containerView.backgroundColor = backgroundColor
    }
    

}
