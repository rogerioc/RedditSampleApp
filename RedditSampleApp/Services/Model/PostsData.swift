//
//  PostsData.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

// MARK: - PostsData
struct PostsData: Codable {
    let dist: Int?
    let children: [Child]?
    let after: String?
    let before: String?
}
