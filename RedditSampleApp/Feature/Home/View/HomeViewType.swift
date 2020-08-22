//
//  HomeViewType.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation

protocol HomeViewType: ViewType {
    var selectedItem: ((PostViewEntity)->Void)? { get set}
    func setUpdateList(with postsViewEntity: [PostViewEntity])
    func loading(is loading: Bool)
}
