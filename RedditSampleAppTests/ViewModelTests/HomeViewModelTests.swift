//
//  HomeViewModelTests.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
import Mockit
@testable import RedditSampleApp

class HomeViewModelTests: XCTestCase {

    var homeViewModel: HomeViewModelType!
    var useCaseType: PostsUseCaseTypeMock!
    
    override func setUp() {
        useCaseType = PostsUseCaseTypeMock(testCase: self)
        homeViewModel = HomeViewModel(postsUseCase: useCaseType)
    }
   
    func testViwDidiLoadCallApi() throws {
        homeViewModel.viewDidLoad()
        
        useCaseType.verify(verificationMode: Once()).execute(success: AnyValue.successClosurePostsViewEntity, failure: AnyValue.failureError)
    }
    
    func testViwDidiLoadCallUseCaseSuccess() throws {
        let postsTest = FactoryData.posts()
        let postView = postsTest.data?.children?.toPostsViewEntity()
        
        useCaseType.when().call(withReturnValue: useCaseType.execute(success: AnyValue.successClosurePostsViewEntity, failure: AnyValue.failureError), andArgumentMatching: [Anything(), Anything()]).thenDo {  (args: [Any?]) -> Void in
            
            (args[0] as! ([PostViewEntity]) -> (Void))(postView!)
        }
        
        homeViewModel.updateView = { posts in
            XCTAssertEqual(posts.count, 1)
        }
        
        homeViewModel.errorData = { 
            XCTAssert(false)
        }
        
        homeViewModel.viewDidLoad()
                
    }
    
    func testViwDidiLoadCallUseCaseError() throws {
        
        useCaseType.when().call(withReturnValue: useCaseType.execute(success: AnyValue.successClosurePostsViewEntity, failure: AnyValue.failureError), andArgumentMatching: [Anything(), Anything()]).thenDo {  (args: [Any?]) -> Void in
            
            (args[1] as! (CustomError) -> (Void))(CustomError.convertError)
        }
        
        homeViewModel.updateView = { posts in
            XCTAssert(false)
        }
        
        homeViewModel.errorData = {
            XCTAssert(true)
        }
        
        homeViewModel.viewDidLoad()
                
    }
   
}
