//
//  LandingView.swift
//  NavigationPOC
//
//  Created by Raj Anand on 10/10/22.
//

import UIKit

final class LandingView: UIView {
  
  // MARK: - Properties
  
  private var nextButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .gray
    button.setTitle("Next", for: .normal)
    return button
  }()
  
  
  // MARK: - Life Cycle
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureView()
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

// MARK: - Setup Helper

private typealias SetupHelper = LandingView
private extension SetupHelper {
  
  private func configureView() {
    backgroundColor = .white
    
    addSubviewsForAutoLayout(nextButton)
    
    NSLayoutConstraint.activate([
      nextButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      nextButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
      nextButton.heightAnchor.constraint(equalToConstant: 40),
      nextButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5)
    ])
    
  }
}
