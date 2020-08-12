//
//  FactoryType.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation

protocol FactoryViewControllerType {
    func makeHomeViewController() -> HomeViewControllerType
}

final class FactoryViewController: FactoryViewControllerType {
    var factoryView: FactoryViewType
    init(factoryView: FactoryViewType) {
        self.factoryView = factoryView
    }
    
    func makeHomeViewController() -> HomeViewControllerType {
        let view = factoryView.makeHomeView()
        return HomeViewController(contentView: view)
    }
}
