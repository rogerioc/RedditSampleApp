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
    
    init(contentView: DetailViewType) {
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
