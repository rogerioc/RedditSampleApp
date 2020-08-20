//
//  MyCustomMock.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 19/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
import Mockit

class MyCustomMock<T>: Mock {
    
    let callHandler: CallHandler
    
    init(testCase: XCTestCase) {
        callHandler = CallHandlerImpl(withTestCase: testCase)
    }
    
    func instanceType() -> T {
        return T.self as! T
    }
}
