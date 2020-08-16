//
//  PostCellViewModel.swift
//  RedditSampleApp
//
//  Created by rogerio on 14/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol PostCellViewModelType: AnyObject {
    var updateView: ((PostViewEntity) -> Void)? { get set }
    func viewDidLoad()
}

final class PostCellViewModel: PostCellViewModelType {
    var updateView: ((PostViewEntity) -> Void)?
    
    let postViewEntity: PostViewEntity
    
    init(postViewEntity: PostViewEntity) {
        self.postViewEntity = postViewEntity
    }
    
    
    func viewDidLoad() {    
        updateView?(postViewEntity)
    }
}
