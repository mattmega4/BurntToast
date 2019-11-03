//
//  WalkthroughContentViewController.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 11/3/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController {

  // MARK: - Outlets

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

      headingLabel.numberOfLines = 0
      subHeadingLabel.numberOfLines = 0

      headingLabel.text = heading
      subHeadingLabel.text = subHeading
      contentImageView.image = UIImage(named: imageFile)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
