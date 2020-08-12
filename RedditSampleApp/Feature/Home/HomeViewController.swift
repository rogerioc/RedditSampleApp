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
    
    public init(contentView: HomeViewType) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        view.addSubview(contentView)
        contentView.bindFrameToSuperviewBounds()
    }
    
}
