//
//  ViewEntitiesConvertsTests.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 22/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
@testable import RedditSampleApp

class ViewEntitiesConvertsTests: XCTestCase {
    
    func testConvertChildToPostViewEntity() throws {
        let child  = FactoryData.child()
        let toPostViewEntity = child.toPostViewEntity()
        
        XCTAssertEqual(child.data?.title, toPostViewEntity.title)
        XCTAssertEqual(child.data?.permalink, toPostViewEntity.url)
    }
    
    func testConvertChildsToPostsViewEntity() throws {
        let child1  = FactoryData.child()
        let child2  = FactoryData.child()
        let childs = [child1, child2]
        let postsViewEntity = childs.toPostsViewEntity()
        
        XCTAssertEqual(childs.count, postsViewEntity.count)
    }
}
