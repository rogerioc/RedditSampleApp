//
//  FactoryViewModelType.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol FactoryViewModelType: AnyObject {
    func makeHomeViewModel(topic: TypeTopic) -> HomeViewModelType
    func makeViewPostListViewModel() -> PostListViewModelType
    func makeDetailViewModel(postViewEntity: PostViewEntity) -> DetailViewModelType
}

final class FactoryViewModel: FactoryViewModelType {
    let factoryUseCaseType: FactoryUseCaseType
    
    init(factoryUseCaseType: FactoryUseCaseType) {
        self.factoryUseCaseType = factoryUseCaseType
    }
    
    func makeHomeViewModel(topic: TypeTopic) -> HomeViewModelType {
        return HomeViewModel(postsUseCase: factoryUseCaseType.makePostsUseCase(topic: topic))
    }
    
    func makeViewPostListViewModel() -> PostListViewModelType {
        PostListViewModel()
    }
    
    func makeDetailViewModel(postViewEntity: PostViewEntity) -> DetailViewModelType {
        DetailViewModel(postViewEntity: postViewEntity)
    }
}
