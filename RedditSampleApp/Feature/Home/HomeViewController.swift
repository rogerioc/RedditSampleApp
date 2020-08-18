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
    weak var delegate: HomeViewFlowDelegate?

    
    public init(contentView: HomeViewType,
                viewmodel: HomeViewModelType,
                delegate: HomeViewFlowDelegate) {
        self.contentView = contentView
        self.viewmodel = viewmodel
        self.delegate = delegate

        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        viewmodel.viewDidLoad()
        viewmodel.updateView = { [weak self] posts in
            self?.contentView.setUpdateList(with: posts)
        }
        
        self.contentView.selectedItem = { [weak self] postViewEntity in
            self?.delegate?.flow(to: .detail(postView: postViewEntity))
        }
        
    }
    
    private func setup() {
        view.addSubview(contentView)
        contentView.bindFrameToSuperviewBounds()
        
    }
    
}
