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
    func makeDetailController(postViewEntity: PostViewEntity) -> DetailViewControllerType
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
        let viewModel = factoryViewModel.makeHomeViewModel(topic: .programming)
        return HomeViewController(contentView: view,
                                  viewmodel: viewModel,
                                  delegate: delegate)
    }
    
    func makeDetailController(postViewEntity: PostViewEntity) -> DetailViewControllerType {
        let view = factoryView.makeDetailView()
        let viewModel = factoryViewModel.makeDetailViewModel(postViewEntity: postViewEntity)
        return DetailViewController(contentView: view, viewModel: viewModel)
    }
}
