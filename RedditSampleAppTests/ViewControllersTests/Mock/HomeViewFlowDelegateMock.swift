//
//  HomeViewFlowDelegateMock.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
import Mockit
@testable import RedditSampleApp

final class HomeViewFlowDelegateMock: HomeViewFlowDelegate, Mock {
    let callHandler: CallHandler
    init(testCase: XCTestCase) {
        self.callHandler = CallHandlerImpl(withTestCase: testCase)
    }
    
    func instanceType() -> HomeViewFlowDelegateMock {
        return self
    }
    
    func flow(to: HomeFlow) {
        callHandler.accept(to, ofFunction: #function, atFile: #file, inLine: #line, withArgs: to)
    }
}
