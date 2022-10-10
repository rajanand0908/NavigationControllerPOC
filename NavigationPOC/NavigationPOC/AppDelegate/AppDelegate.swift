//
//  AppDelegate.swift
//  NavigationPOC
//
//  Created by Raj Anand on 10/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    /// Added window with frame of UIScreen
    /// Added navigation controller as window root view controller
    /// Added landing view controller as navigation root view controller
    window = UIWindow(frame: UIScreen.main.bounds)
    
    let landingViewController = LandingViewController()
    
    window?.rootViewController = UINavigationController(rootViewController: landingViewController)
    window?.makeKeyAndVisible()
    
    return true
  }

}

