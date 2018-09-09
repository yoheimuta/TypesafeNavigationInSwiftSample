//
//  AppDelegate.swift
//  TypesafeNavigationInSwift
//
//  Created by YOSHIMUTA YOHEI on 2018/08/29.
//  Copyright © 2018年 YOSHIMUTA YOHEI. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let vcFactory = ViewControllerFactory()
        let navigator = Navigator(vcFactory)
        let authFlow = navigator.startAuthFlow {
            print("complete auth flow")
        }

        let initialVC = ViewController.make(dep: .init(
            flow: authFlow
        ))
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = initialVC
        window?.makeKeyAndVisible()
        return true
    }
}
