//
//  DefaultView.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//


import UIKit
protocol DefaultViewType {
  func buildHierarch()
  func setupConstraints()
}

class DefaultView: UIView, DefaultViewType {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildHierarch()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        buildHierarch()
        setupConstraints()
    }
    
    func buildHierarch() {
        
    }
    
    func setupConstraints() {
        
    }
    
    
}
