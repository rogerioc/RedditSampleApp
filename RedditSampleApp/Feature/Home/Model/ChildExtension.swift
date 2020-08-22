//
//  ChildExtension.swift
//  RedditSampleApp
//
//  Created by rogerio on 14/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

extension Child {
    func toPostViewEntity() -> PostViewEntity {
        PostViewEntity(title: self.data?.title ?? "", url: self.data?.permalink ?? "")
    }
}

extension Array where Element == Child {    
    func toPostsViewEntity() -> [PostViewEntity] {
        return self.compactMap { child -> PostViewEntity in
            child.toPostViewEntity()
        }
    }
}
