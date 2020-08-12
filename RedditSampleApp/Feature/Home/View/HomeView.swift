//
//  HomeView.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation
import UIKit

final class HomeView: DefaultView, HomeViewType {
    
    private lazy var buttonOk: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: Metrics.Button.height).isActive = true
        return button
    }()
    
    override func buildHierarch() {
        backgroundColor = .white
        addSubview(buttonOk)
    }
    
    override func setupConstraints() {
        buttonOk.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        buttonOk.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
