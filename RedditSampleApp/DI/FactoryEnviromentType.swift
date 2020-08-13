//
//  FactoryEnviromentType.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol  FactoryEnviromentType: Any {
    func makeEnviroment() -> EnvironmentType
}

final class FactoryEnviroment: FactoryEnviromentType {
    
    func makeEnviroment() -> EnvironmentType {
        return EnvironmentString()
    }
}
