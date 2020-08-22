//
//  FlowMain.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation
import UIKit

final class FlowControllerMain: FlowControllerType {
    
    var navigationController: UINavigationController
    
    var currrentViewController: UIViewController?
    
    var factory: FactoryViewControllerType
    
    init(navigationController: UINavigationController, factory: FactoryViewControllerType) {
        self.navigationController = navigationController
        self.factory = factory
    }
    
    func start() {
        startHome()
    }
    
    private func startHome() {
        let viewController = factory.makeHomeViewController(delegate: self)
        push(viewController: viewController)
    }
            
}

extension FlowControllerMain: HomeViewFlowDelegate {
    func flow(to: HomeFlow) {
        let flow = FlowControllerDetail(navigationController: navigationController,
                                        factory: factory)
        flow.start()
    }
    
    
       
}
