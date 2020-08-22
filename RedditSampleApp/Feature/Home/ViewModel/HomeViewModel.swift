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
    var errorData: (() -> Void)? { get set }
    func selectedItem(item: PostViewEntity)
    func viewDidLoad()
}

final class HomeViewModel: HomeViewModelType {
    var errorData: (() -> Void)?
    var updateView: (([PostViewEntity]) -> Void)?
        
    let postsUseCase: PostsUseCaseType
    
    init(postsUseCase: PostsUseCaseType) {
        self.postsUseCase = postsUseCase
    }
    
    func selectedItem(item: PostViewEntity) {
        
    }
    
    func viewDidLoad() {
        postsUseCase.execute(success: { [weak self] posts in            
            self?.updateView?(posts)
            
        }, failure: { [weak self]  error in
            self?.errorData?()
        })
    }
        
    
}
