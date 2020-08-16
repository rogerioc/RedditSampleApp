//
//  FactoryViewModelType.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol FactoryViewModelType: AnyObject {
    func makeHomeViewModel() -> HomeViewModelType
    func makeViewPostListViewModel() -> PostListViewModelType
}

final class FactoryViewModel: FactoryViewModelType {
    let factoryUseCaseType: FactoryUseCaseType
    
    init(factoryUseCaseType: FactoryUseCaseType) {
        self.factoryUseCaseType = factoryUseCaseType
    }
    
    func makeHomeViewModel() -> HomeViewModelType {
        return HomeViewModel(postsUseCase: factoryUseCaseType.makePostsUseCase())
    }
    
    func makeViewPostListViewModel() -> PostListViewModelType {
        PostListViewModel()
    }
}
