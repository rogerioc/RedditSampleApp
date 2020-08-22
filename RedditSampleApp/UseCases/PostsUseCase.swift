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
    let topic: TypeTopic
    
    init(repository: PostsRepositoryType, topic: TypeTopic) {
        self.repository = repository
        self.topic = topic

    }
    
    func execute(success: @escaping ([PostViewEntity]) -> (), failure: @escaping (CustomError) -> ()) {
        repository.fetchPosts(type: topic.jsonName, success: { posts in
            let data = posts.data?.children?.toPostsViewEntity()
            guard let _data = data else {
                failure(CustomError.convertError)
                return
            }
            success(_data)
        }, failure: failure)
    }
    
}
