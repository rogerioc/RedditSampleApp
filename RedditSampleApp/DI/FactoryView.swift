//
//  FactoryView.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

final class FactoryView: FactoryViewType {
    let factoryViewModel: FactoryViewModelType

    init(factoryViewModel: FactoryViewModelType) {
        self.factoryViewModel = factoryViewModel
    }
    
    func makeHomeView() -> HomeViewType {
        let postListViewModel = factoryViewModel.makeViewPostListViewModel()
        return HomeView(postListViewModelType: postListViewModel)
    }
    
    func makeDetailView() -> DetailViewType {
        return DetailView() 
    }
    
}
