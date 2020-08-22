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
    
    func testCallFetchPosts() throws {
        
        let success = { (posts: [PostViewEntity]) in  }
        let successPosts = { (posts: Posts) in  }
        let failure = { (error: CustomError)  in }
        
        postsUseCase?.execute(success: success, failure: failure)
        
        postRepository?.verify(verificationMode: Once()).fetchPosts(type: AnyValue.string, success: successPosts, failure: failure)
        
    }
    
    func testCallFetchPostsOK() throws {
        
        let success = { (posts: Posts) in  }
        let failure = { (error: CustomError)  in }
        let postsTest = FactoryData.posts()
        _ = postRepository?.when().call(withReturnValue: postRepository.fetchPosts(type: AnyValue.string, success: success, failure: failure ), andArgumentMatching: [Anything(), Anything()]).thenDo {  (args: [Any?]) -> Void in
            
            (args[0] as! (Posts) -> (Void))(postsTest)
        }
        
        postsUseCase?.execute(success: { posts in
            XCTAssertEqual(posts.count, 1)
        }, failure: { _ in
            XCTAssert(false)
        })
        
    }
    
    func testCallFetchPostsError() throws {
        
        let success = { (posts: Posts) in  }
        let failure = { (error: CustomError)  in }
        let error = CustomError.network
        _ = postRepository?.when().call(withReturnValue: postRepository.fetchPosts(type: AnyValue.string, success: success, failure: failure ), andArgumentMatching: [Anything(), Anything()]).thenDo {  (args: [Any?]) -> Void in
            
            (args[1] as! (CustomError) -> (Void))(error)
        }
        
        postsUseCase?.execute(success: { _ in
            XCTAssert(false)
        }, failure: { error in
            XCTAssertEqual(error, CustomError.network)
        })
        
    }
    
    
    
}
