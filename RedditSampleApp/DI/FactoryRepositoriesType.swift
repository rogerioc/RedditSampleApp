//
//  FactoryRepositoriesType.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol FactoryRepositoriesType: AnyObject {
    func makePostsRepository() -> PostsRepositoryType
}

final class FactoryRepositories: FactoryRepositoriesType{
    let factoryEnviromentType: FactoryEnviromentType
    
    init(factoryEnviromentType: FactoryEnviromentType) {
        self.factoryEnviromentType = factoryEnviromentType
    }
    
    func makePostsRepository() -> PostsRepositoryType {
        return PostsRepository(environment: factoryEnviromentType.makeEnviroment())
    }
}
