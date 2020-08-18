//
//  PostView.swift
//  RedditSampleApp
//
//  Created by rogerio on 14/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import UIKit

final class PostView: DefaultUIView, PostViewType {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .topaz
        label.font = .textStyle
        
        return label
    }()
    
    lazy var stackData: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.axis = .vertical
        return stackView
    }()
    
    override func buildHierarch() {
        addSubview(stackData)
        stackData.addArrangedSubview(titleLabel)
    }
    
    override func setupConstraints() {
        stackData.bindFrameToSuperviewBounds(constant: Metrics.Spacing.small)
        
    }
    
    private func setTitle(with title: String) {
        titleLabel.text = title
        titleLabel.sizeToFit()
    }
}

extension PostView {
    
    func updateData(with postViewEntity: PostViewEntity) {
        setTitle(with: postViewEntity.title)
    }
}
