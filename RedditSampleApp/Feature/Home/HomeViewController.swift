//
//  HomeViewController.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
import UIKit

final class HomeViewController: UIViewController, HomeViewControllerType {
    var contentView: HomeViewType
    let viewmodel: HomeViewModelType
    
    public init(contentView: HomeViewType,
                viewmodel: HomeViewModelType) {
        self.contentView = contentView
        self.viewmodel = viewmodel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        viewmodel.viewDidLoad()
    }
    
    private func setup() {
        view.addSubview(contentView)
        contentView.bindFrameToSuperviewBounds()
        
    }
    
}
