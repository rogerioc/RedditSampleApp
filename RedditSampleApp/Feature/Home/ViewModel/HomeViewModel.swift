//
//  HomeViewModel.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol HomeViewModelType: AnyObject {
    var viewState: ((HomeViewState) -> Void)? { get set }
    func selectedItem(item: PostViewEntity)
    func viewDidLoad()
}

final class HomeViewModel: HomeViewModelType {
    var viewState: ((HomeViewState) -> Void)?
    
    var errorData: (() -> Void)?
    var updateView: (([PostViewEntity]) -> Void)?
    
    let postsUseCase: PostsUseCaseType
    private var homeState: HomeViewState = .isLoading{
        didSet {
            DispatchQueue.main.async { [weak self] in
                guard let _self = self else { return }
                _self.viewState?(_self.homeState)
            }
        }
    }
    
    init(postsUseCase: PostsUseCaseType) {
        self.postsUseCase = postsUseCase
    }
    
    func selectedItem(item: PostViewEntity) {
        
    }
    
    func viewDidLoad() {
        homeState = .isLoading
        postsUseCase.execute(success: { [weak self] posts in
            self?.homeState = .hasData(posts: posts)
            }, failure: { [weak self]  error in
                self?.homeState = .error
        })
    }
    
    
}
