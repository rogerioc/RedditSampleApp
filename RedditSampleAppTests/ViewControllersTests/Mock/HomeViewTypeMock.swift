//
//  HomeViewTypeMock.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
import Mockit
import UIKit

@testable import RedditSampleApp

final class HomeViewTypeMock: UIView, HomeViewType, Mock {
    
    let callHandler: CallHandler
    var selectedItem: ((PostViewEntity) -> Void)?

    init(testCase: XCTestCase) {
        callHandler = CallHandlerImpl(withTestCase: testCase)
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpdateList(with postsViewEntity: [PostViewEntity]) {
        callHandler.accept(nil, ofFunction: #function, atFile: #file, inLine: #line, withArgs: postsViewEntity)
    }
    
    func loading(is loading: Bool) {
        callHandler.accept(nil, ofFunction: #function, atFile: #file, inLine: #line, withArgs: loading)
    }
    

    
    func instanceType() -> HomeViewTypeMock {
        return self
    }
    
    
}
