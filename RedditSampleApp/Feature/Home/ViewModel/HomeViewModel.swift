//
//  HomeViewModel.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol HomeViewModelType: AnyObject {
    var updateView: (([PostViewEntity]) -> Void)? { get set }
    func selectedItem(item: PostViewEntity)
    func viewDidLoad()
}

final class HomeViewModel: HomeViewModelType {
    
    var updateView: (([PostViewEntity]) -> Void)?
        
    let postsUseCase: PostsUseCaseType
    
    init(postsUseCase: PostsUseCaseType) {
        self.postsUseCase = postsUseCase
    }
    
    func selectedItem(item: PostViewEntity) {
        
    }
    
    func viewDidLoad() {
        postsUseCase.execute(success: { [weak self] posts in
            let data = posts.data?.children?.toPostsViewEntity()
            guard let _data = data else { return }
            self?.updateView?(_data)
            
        }, failure: { error in
            debugPrint(error)
        })
    }
        
    
}
