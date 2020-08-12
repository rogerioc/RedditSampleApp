//
//  AppDelegate.swift
//  RedditSampleApp
//
//  Created by rogerio on 10/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var flowMain: FlowControllerMain?
    
    private let navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.backgroundColor = UIColor.topaz
        navigationController.navigationBar.tintColor = UIColor.topaz
        return navigationController
    }()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = navigationController
        let viewFactory = FactoryView()
        flowMain = FlowControllerMain(navigationController: navigationController, factory: FactoryViewController(factoryView: viewFactory))
        window?.makeKeyAndVisible()
        flowMain?.start()
        return true
    }
    
    
}

