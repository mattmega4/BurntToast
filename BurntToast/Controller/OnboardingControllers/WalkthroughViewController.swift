//
//  WalkthroughViewController.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 11/3/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController, WalkthroughPageViewControllerDelegate {

  //MARK: - Outlets

  @IBOutlet weak var pageControl: UIPageControl!
  @IBOutlet weak var nextButton: UIButton!
  @IBOutlet weak var skipButton: UIButton!

  //MARK: - Properties

  var walkthroughPageViewController: WalkthroughPageViewController?
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  func updateUI() {
    if let index = walkthroughPageViewController?.currentIndex {
      switch index {
      case 0...1:
        nextButton.setTitle("NEXT", for: .normal)
      case 2:
        nextButton.setTitle("Create Account", for: .normal)
      default:
        break
      }
      pageControl.currentPage = index
    }

  }

  func didUpdatePageIndex(currentIndex: Int) {
    updateUI()
  }

  @IBAction func nextButtonTapped(_ sender: UIButton) {
    if let index = walkthroughPageViewController?.currentIndex {
      switch index {
      case 0...1:
        walkthroughPageViewController?.forwardPage()
      case 2:
        UserDefaults.standard.set(true, forKey: "hasViewedWalkthrough")
        dismiss(animated: true, completion: nil)
      default:
        break
      }
    }
    updateUI()
  }


  @IBAction func skipButtonTapped(_ sender: UIButton) {
    UserDefaults.standard.set(true, forKey: "hasViewedWalkthrough")
    dismiss(animated: true, completion: nil)
  }



  //MARK: - Navigation

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let destination = segue.destination
    if let pageViewController = destination as? WalkthroughPageViewController {
      walkthroughPageViewController = pageViewController
      walkthroughPageViewController?.walkthroughDelegate = self
    }
  }

}
