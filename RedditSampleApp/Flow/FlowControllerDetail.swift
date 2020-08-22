//
//  FlowControllerDetail.swift
//  RedditSampleApp
//
//  Created by rogerio on 22/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
import UIKit

final class FlowControllerDetail: FlowControllerType {
    
    var navigationController: UINavigationController
    
    var currrentViewController: UIViewController?
    
    var factory: FactoryViewControllerType
    
    init(navigationController: UINavigationController, factory: FactoryViewControllerType) {
        self.navigationController = navigationController
        self.factory = factory
    }
    
    func start() {
        startViewDetail()
    }
    
    private func startViewDetail() {
        let viewController = factory.makeDetailController()
        push(viewController: viewController)
    }
    
    
}
