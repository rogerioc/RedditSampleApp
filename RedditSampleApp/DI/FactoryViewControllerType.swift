//
//  FactoryType.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation

protocol FactoryViewControllerType {
    func makeHomeViewController(delegate: HomeViewFlowDelegate) -> HomeViewControllerType
}

final class FactoryViewController: FactoryViewControllerType {
    let factoryView: FactoryViewType
    let factoryViewModel: FactoryViewModelType
    
    init(factoryView: FactoryViewType,
         factoryViewModelType: FactoryViewModelType) {
        self.factoryView = factoryView
        self.factoryViewModel = factoryViewModelType
    }
    
    func makeHomeViewController(delegate: HomeViewFlowDelegate) -> HomeViewControllerType {
        let view = factoryView.makeHomeView()
        let viewModel = factoryViewModel.makeHomeViewModel()
        return HomeViewController(contentView: view,
                                  viewmodel: viewModel,
                                  delegate: delegate)
    }
}
