//
//  HomeViewState.swift
//  RedditSampleApp
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

enum HomeViewState {
    case isLoading
    case hasData(posts: [PostViewEntity])
    case error
}
