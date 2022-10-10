//
//  CustomViewController.swift
//  NavigationPOC
//
//  Created by Raj Anand on 10/10/22.
//

import UIKit

open class CustomViewController<View: UIView>: ViewController {
  
  // MARK: - Properties
  
  var customView: View {
    view as! View
  }
  
  // MARK: - Life Cycle
  
  override public init() {
    super.init()
  }
 
  open override func loadView() {
    view = buildView(frame: UIScreen.main.bounds)
  }
  
  open func buildView(frame: CGRect) -> View {
    return View(frame: frame)
  }
  
}
