//
//  WalkthroughPageViewController.swift
//  BurntToast
//
//  Created by Matthew Howes Singleton on 11/3/19.
//  Copyright © 2019 Matthew Howes Singleton. All rights reserved.
//

import UIKit

protocol WalkthroughPageViewControllerDelegate: class {
  func didUpdatePageIndex(currentIndex: Int)
}

class WalkthroughPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate{

  // MARK: - Properties

  weak var walkthroughDelegate: WalkthroughPageViewControllerDelegate?

  var pageHeadings = ["1", "2", "3"]
  var pageSubheadings = ["One", "Two", "Three"]
  var currentIndex = 0


  override func viewDidLoad() {
    super.viewDidLoad()

    dataSource = self
    delegate = self

    if let startingViewController = contentViewController(at: 0) {
      setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
    }
  }

  // MARK: - Page View Controller Data Source


  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    var index = (viewController as! WalkthroughContentViewController).index
    index -= 1

    return contentViewController(at: index)
  }

  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    var index = (viewController as! WalkthroughContentViewController).index
    index += 1

    return contentViewController(at: index)
  }


  //MARK: - Helper

  func contentViewController(at index: Int) -> WalkthroughContentViewController? {
    if index < 0 || index >= pageHeadings.count {
      return nil
    }

    // Create a new view controller and pass suitable data
    let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
    if let pageContentViewController = storyboard.instantiateViewController(identifier: "WalkthroughContentViewController") as? WalkthroughContentViewController {
      //        pageContentViewController.imageFile = pageImages[index]
      pageContentViewController.heading = pageHeadings[index]
      pageContentViewController.subHeading = pageHeadings[index]
      pageContentViewController.index = index

      return pageContentViewController
    }
    return nil
  }

  func forwardPage() {
    currentIndex += 1
    if let nextViewController = contentViewController(at: currentIndex) {
      setViewControllers([nextViewController], direction: .forward, animated: true, completion: nil)
    }
  }

  func reversePage() {
    currentIndex -= 1
    if let previousViewController = contentViewController(at: currentIndex) {
      setViewControllers([previousViewController], direction: .reverse, animated: true, completion: nil)
    }
  }

  //MARK: - Page View Controller Delegate

  func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
    if completed {
      if let contentViewController = pageViewController.viewControllers?.first as? WalkthroughContentViewController {
        currentIndex = contentViewController.index
        
        walkthroughDelegate?.didUpdatePageIndex(currentIndex: currentIndex)
      }
    }
  }

}
