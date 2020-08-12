//
//  FlowControllerType.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import UIKit

protocol FlowControllerType: AnyObject {
    var navigationController: UINavigationController { get }
    var currrentViewController: UIViewController? { get set }
    var factory: FactoryViewControllerType { get }
    func start()
}

extension FlowControllerType {
    
    func push(viewController: UIViewController,animated: Bool = true) {
        navigationController.pushViewController(viewController, animated: animated)
        currrentViewController = viewController
    }
    
    func present(viewController: UIViewController,animated: Bool = true) {
        navigationController.topViewController?.present(viewController, animated: animated, completion: nil)
        currrentViewController = viewController
    }
}
