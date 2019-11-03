//
//  WalkthroughViewController.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 11/3/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {

  //MARK: - Outlets

  @IBOutlet weak var pageControl: UIPageControl!
  @IBOutlet weak var nextButton: UIButton!
  @IBOutlet weak var skipButton: UIButton!

  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  @IBAction func NextButtonTapped(_ sender: UIButton) {
    
  }
  
  @IBAction func skipButtonTapped(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }

}
