//
//  PostListDelegate.swift
//  RedditSampleApp
//
//  Created by rogerio on 17/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol PostListDelegate: AnyObject {
    func selectedItem(item: PostViewEntity)
}
