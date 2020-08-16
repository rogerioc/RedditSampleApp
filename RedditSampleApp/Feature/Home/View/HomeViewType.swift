//
//  HomeViewType.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation

protocol HomeViewType: ViewType {
    func setUpdateList(with postsViewEntity: [PostViewEntity])
    
}
