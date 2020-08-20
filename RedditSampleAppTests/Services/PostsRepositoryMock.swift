//
//  PostsRepositoryMock.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 19/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
import Mockit

@testable import RedditSampleApp

final class PostsRepositoryMock: Mock, PostsRepositoryType {
    
    let callHandler: CallHandler
    
    init(testCase: XCTestCase) {
        callHandler = CallHandlerImpl(withTestCase: testCase)
    }
    
    func instanceType() -> PostsRepositoryMock {
        return self
    }
               
    func fetchPosts(type: String, success: @escaping (Posts) -> (), failure: @escaping (CustomError) -> ()) {
            callHandler.accept(nil, ofFunction: #function, atFile: #file, inLine: #line, withArgs: success, failure)

    }
    
    func getDetail(detailPath: String, success: @escaping (Posts) -> (), failure: @escaping (CustomError) -> ()) {
        callHandler.accept(nil, ofFunction: #function, atFile: #file, inLine: #line, withArgs: success, failure)

    }
    
}
