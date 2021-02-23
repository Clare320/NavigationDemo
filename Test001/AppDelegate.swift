//
//  AppDelegate.swift
//  Test001
//
//  Created by lingjie.li on 2021/2/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let tabbarVC = RootTabbarViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = tabbarVC
        window!.makeKeyAndVisible()
        
        return true
    }
}

