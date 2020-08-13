//
//  FactoryRedditProject.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

final class FactoryRedditProject {
    
    static func makeFactoryViewModel() -> FactoryViewModelType {
        let enviroment = FactoryEnviroment()
        let factoryRepositories = FactoryRepositories(factoryEnviromentType: enviroment)
        let factoryUseCase = FactoryUseCase(factoryRepositoriesType: factoryRepositories)
        return FactoryViewModel(factoryUseCaseType: factoryUseCase)
    }
}
