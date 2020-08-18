//
//  HomeView.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation
import UIKit

final class HomeView: DefaultUIView, HomeViewType {
    var selectedItem: ((PostViewEntity) -> Void)?
    
    var postListViewModelType: PostListViewModelType?
    
    init(postListViewModelType: PostListViewModelType) {
        self.postListViewModelType = postListViewModelType
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    private lazy var list: PostListUIView = {
        let list = PostListUIView()
        list.translatesAutoresizingMaskIntoConstraints = false
        return list
    }()
    
    override func buildHierarch() {
        backgroundColor = .white
        addSubview(list)
        guard let postListViewModelType = postListViewModelType else { return }
        list.setViewModel(with: postListViewModelType)
        self.postListViewModelType?.delegate = self

        list.viewDidLoad()
        
    }
    
    override func setupConstraints() {
        list.bindFrameToSuperviewBounds()
    }
    
}

extension HomeView {
    func setUpdateList(with postsViewEntity: [PostViewEntity]) {
        postListViewModelType?.setList(with: postsViewEntity)
    }
}


extension HomeView: PostListDelegate {
    func selectedItem(item: PostViewEntity) {
        selectedItem?(item)
    }
    
    
}
