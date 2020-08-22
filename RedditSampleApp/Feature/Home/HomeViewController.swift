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
        title = Texts.home.title
        viewmodel.viewDidLoad()
        viewmodel.viewState = { [weak self] state in
            switch state {
            case .isLoading:
                self?.contentView.loading(is: true)
            case .hasData(let posts):
                self?.contentView.loading(is: false)
                self?.contentView.setUpdateList(with: posts)
            case .error(let title, let message):
                self?.contentView.loading(is: false)
                self?.alertOK(title: title, message: message, okSellected: nil)
            }
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
