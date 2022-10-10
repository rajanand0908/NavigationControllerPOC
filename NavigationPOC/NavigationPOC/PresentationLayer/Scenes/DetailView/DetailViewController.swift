//
//  DetailViewController.swift
//  NavigationPOC
//
//  Created by Raj Anand on 10/10/22.
//

import UIKit

final class DetailViewController: CustomViewController<DetailView> {
  
  // MARK: - Life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
}

private typealias SetupHelper = DetailViewController
extension SetupHelper {
  
  func setup() {
    setupNavigationBar()
  }
  
  func setupNavigationBar() {
    let backButton = UIBarButtonItem()
    backButton.title = ""
    self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    navigationItem.title = "Detail Screen"
  }
  
}
