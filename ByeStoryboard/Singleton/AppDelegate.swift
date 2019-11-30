//
//  AppDelegate.swift
//  ByeStoryboard
//
//  Created by Digital Vision on 30/11/2019.
//  Copyright © 2019 Digital Vision. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let profileViewController = ProfileViewController()
        profileViewController.view.backgroundColor = .white
        
        window?.rootViewController = profileViewController
        window?.makeKeyAndVisible()
        
        return true
    }
    
}

