//
//  LandingViewController.swift
//  NavigationPOC
//
//  Created by Raj Anand on 10/10/22.
//

import UIKit

final class LandingViewController: CustomViewController<LandingView> {
  
  // MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  override func buildView(frame: CGRect) -> LandingView {
    return LandingView(frame: frame, delegate: self)
  }
  
}

// MARK: - Setup Helper

private typealias SetupHelper = LandingViewController
extension SetupHelper {
  
  func setup() {
    setupNavigationBar()
  }
  
  func setupNavigationBar() {
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationController?.navigationBar.backgroundColor = .purple
    navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    navigationController?.navigationBar.tintColor = .white
    navigationItem.title = "Landing Screen"
  }
  
}

// MARK: - Landing View Action Helper

private typealias LandingViewActionHelper = LandingViewController
extension LandingViewActionHelper: LandingViewActionProtocol {
  
  func nextButtonClicked(_ sender: Any) {
    navigationController?.pushViewController(DetailViewController(), animated: true)
  }
  
}
