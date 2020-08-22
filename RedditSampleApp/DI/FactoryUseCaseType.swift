//
//  FactoryUseCaseType.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol FactoryUseCaseType: AnyObject {
    func makePostsUseCase(topic: TypeTopic) -> PostsUseCaseType
}

final class FactoryUseCase: FactoryUseCaseType {
    let factoryRepositoriesType: FactoryRepositoriesType
    
    init(factoryRepositoriesType: FactoryRepositoriesType) {
        self.factoryRepositoriesType = factoryRepositoriesType
    }
    
    func makePostsUseCase(topic: TypeTopic) -> PostsUseCaseType {
        return PostsUseCase(repository: factoryRepositoriesType.makePostsRepository(), topic: topic)
    }
}
