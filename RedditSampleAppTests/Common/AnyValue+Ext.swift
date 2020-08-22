//
//  AnyValue+Ext.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Mockit
@testable import RedditSampleApp

extension AnyValue {
    static let postsArray = [PostViewEntity]()
    static let successClosurePosts = { (posts: Posts) in  }
    static let successClosurePostsViewEntity = { (posts: [PostViewEntity]) in  }
    static let failureError = { (error: CustomError)  in }
}
