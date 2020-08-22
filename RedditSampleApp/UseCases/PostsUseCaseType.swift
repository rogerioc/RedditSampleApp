//
//  PostsUseCaseType.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol PostsUseCaseType: AnyObject {
    func execute(success: @escaping ([PostViewEntity])-> (), failure: @escaping (CustomError)->())
    
}

