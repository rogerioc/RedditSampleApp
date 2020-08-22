//
//  HomeViewTests.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import XCTest
import Mockit

@testable import RedditSampleApp

class HomeViewControllerTests: XCTestCase {
    
    var homeViewTest: HomeViewTypeMock!
    var viewmodel: HomeViewModelTypeMock!
    var delegate: HomeViewFlowDelegateMock!
    var homeViewController: HomeViewControllerType!
    
    override func setUp() {
        homeViewTest = HomeViewTypeMock(testCase: self)
        viewmodel = HomeViewModelTypeMock(testCase: self)
        delegate = HomeViewFlowDelegateMock(testCase: self)
        homeViewController = HomeViewController(contentView: homeViewTest,
                                                viewmodel: viewmodel,
                                                delegate: delegate)
    }
    
    func testIfUpdadeViewIsNil() throws {
        XCTAssertNil(viewmodel.viewState)
    }
    
    func testIfselectedItemIsNil() throws {
        XCTAssertNil(homeViewTest.selectedItem)
    }
    
    func testViewModelViewDidLoadCalled() throws {
        homeViewController.viewDidLoad()
        // Depois entender porque em teste chama mais de uma vez
        viewmodel.verify(verificationMode: AtLeastOnce()).viewDidLoad()
    }
    
    func testIfUpdadeViewIsSet() throws {
        homeViewController.viewDidLoad()
        XCTAssertNotNil(viewmodel.viewState)
    }
    
    func testIfselectedItemIsSet() throws {
        homeViewController.viewDidLoad()
        XCTAssertNotNil(homeViewTest.selectedItem)
    }
        
}
