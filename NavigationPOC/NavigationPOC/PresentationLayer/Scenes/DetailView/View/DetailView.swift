//
//  DetailView.swift
//  NavigationPOC
//
//  Created by Raj Anand on 10/10/22.
//

import UIKit

final class DetailView: UIView {
  
  // MARK: - Life cycle
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupUI()
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

// MARK: - Setup helper

private typealias SetupHelper = DetailView
private extension SetupHelper {
  
  func setupUI() {
    backgroundColor = .white
  }
  
}
