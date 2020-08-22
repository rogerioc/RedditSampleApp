//
//  DetailViewModel.swift
//  RedditSampleApp
//
//  Created by rogerio on 22/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

final class DetailViewModel: DetailViewModelType {
    var title: ((String) -> Void)?
    let postViewEntity: PostViewEntity
    
    init(postViewEntity: PostViewEntity) {
        self.postViewEntity = postViewEntity
    }
    
    func viewDidLoad() {
        
        title?(postViewEntity.title)
    }
    
}
