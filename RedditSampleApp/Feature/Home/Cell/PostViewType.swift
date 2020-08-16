//
//  PostViewType.swift
//  RedditSampleApp
//
//  Created by rogerio on 14/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol PostViewType: ViewType {
    func updateData(with postViewEntity: PostViewEntity)
}
