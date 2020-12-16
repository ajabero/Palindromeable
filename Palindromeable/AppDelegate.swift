//
//  AppDelegate.swift
//  Palindromeable
//
//  Created by Asaad Jaber on 12/16/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: InputViewController())
        return true
    }
}

