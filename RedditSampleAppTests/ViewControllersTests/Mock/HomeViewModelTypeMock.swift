//
//  File.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
import Mockit
import XCTest
@testable import RedditSampleApp


final class HomeViewModelTypeMock: HomeViewModelType, Mock {
    let callHandler: CallHandler
    var updateView: (([PostViewEntity]) -> Void)?

    init(testCase: XCTestCase) {
        self.callHandler = CallHandlerImpl(withTestCase: testCase)
    }
    
    func instanceType() -> HomeViewModelTypeMock {
          return self
    }
    
    func selectedItem(item: PostViewEntity) {
        callHandler.accept(item, ofFunction: #function, atFile: #file, inLine: #line, withArgs: item)
    }
    
    func viewDidLoad() {
        callHandler.accept(nil, ofFunction: #function, atFile: #file, inLine: #line, withArgs: nil)
    }        
}
