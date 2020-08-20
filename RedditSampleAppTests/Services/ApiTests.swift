//
//  ApiTests.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 19/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
import Mockit
@testable import RedditSampleApp

class UseCaseTests: XCTestCase {
    
    var postRepository: PostsRepositoryMock!
    var postsUseCase: PostsUseCaseType!
    
    override func setUp() {
        postRepository = PostsRepositoryMock(testCase: self)
        postsUseCase = PostsUseCase(repository: postRepository!)
    }
        
    func testFetchPosts() throws {
        
        let success = { (posts: Posts) in  }
        let failure = { (error: CustomError)  in }
                
        postsUseCase?.execute(success: success, failure: failure)
        
        postRepository?.verify(verificationMode: Once()).fetchPosts(type: AnyValue.string, success: success, failure: failure)
        
    }
    
    
    
}
