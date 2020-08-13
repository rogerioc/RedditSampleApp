//
//  PostsUseCase.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

final class PostsUseCase: PostsUseCaseType {
        
    let repository: PostsRepositoryType
    
    init(repository: PostsRepositoryType) {
        self.repository = repository
    }
    
    func execute(success: @escaping (Posts) -> (), failure: @escaping (CustomError) -> ()) {
        repository.fetchPosts(type: "programming", success: success, failure: failure)
    }
    
}
