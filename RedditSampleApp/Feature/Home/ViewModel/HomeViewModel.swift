//
//  HomeViewModel.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol HomeViewModelType: AnyObject {
    func viewDidLoad()
}

final class HomeViewModel: HomeViewModelType {
    
    let postsUseCase: PostsUseCaseType
    
    init(postsUseCase: PostsUseCaseType) {
        self.postsUseCase = postsUseCase
    }
    
    
    func viewDidLoad() {
        postsUseCase.execute(success: { posts in
            debugPrint(posts.data)
            
        }, failure: { error in
            debugPrint(error)
        })
    }
    
}
