//
//  PostsUseCaseTypeMock.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
import Mockit

@testable import RedditSampleApp

final class PostsUseCaseTypeMock: PostsUseCaseType, Mock {
    
    let callHandler: CallHandler
    
    init(testCase: XCTestCase) {
        callHandler = CallHandlerImpl(withTestCase: testCase)
    }
    
    func execute(success: @escaping ([PostViewEntity]) -> (), failure: @escaping (CustomError) -> ()) {
        callHandler.accept(nil, ofFunction: #function, atFile: #file, inLine: #line, withArgs: success,failure)
    }
    
    func instanceType() -> PostsUseCaseTypeMock {
        return self
    }
}
