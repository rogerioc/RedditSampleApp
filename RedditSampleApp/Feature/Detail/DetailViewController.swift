//
//  DetailViewController.swift
//  RedditSampleApp
//
//  Created by rogerio on 22/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import UIKit

final class DetailViewController: UIViewController, DetailViewControllerType {
    var contentView: DetailViewType
    let viewModel: DetailViewModelType
    
    init(contentView: DetailViewType, viewModel: DetailViewModelType) {
        self.contentView = contentView
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        setup()
        viewModel.title = { [weak self] title in
            self?.title = title
        }
        viewModel.viewDidLoad()
    }
    
    private func setup() {
        view.addSubview(contentView)
        contentView.bindFrameToSuperviewBounds()
    }
}
