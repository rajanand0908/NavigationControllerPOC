//
//  LandingView.swift
//  NavigationPOC
//
//  Created by Raj Anand on 10/10/22.
//

import UIKit

/// A Protocol that defines all the action of landing view
///
protocol LandingViewActionProtocol: AnyObject {
  func nextButtonClicked(_ sender: Any)
}

final class LandingView: UIView {
  
  // MARK: - Properties
  
  private var nextButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .gray
    button.setTitle("Next", for: .normal)
    return button
  }()
  
  weak var delegate: LandingViewActionProtocol?
  
  // MARK: - Life Cycle
  
  init(frame: CGRect, delegate: LandingViewActionProtocol?) {
    self.delegate = delegate
    super.init(frame: frame)
    setupUI()
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

// MARK: - Setup Helper

private typealias SetupHelper = LandingView
private extension SetupHelper {
  
  private func setupUI() {
    backgroundColor = .white
    
    nextButton.addTarget(self, action: #selector(nextButtonClicked(_:)), for: .touchUpInside)
    addSubviewsForAutoLayout(nextButton)
    
    NSLayoutConstraint.activate([
      nextButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      nextButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
      nextButton.heightAnchor.constraint(equalToConstant: 40),
      nextButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5)
    ])
    
  }
  
  @objc func nextButtonClicked(_ sender: Any) {
    delegate?.nextButtonClicked(sender)
  }
  
}
