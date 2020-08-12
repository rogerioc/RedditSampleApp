//
//  ChildData.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

struct ChildData: Codable {
    let approvedAtUTC: String?
    let subreddit, selftext, authorFullname, title: String?
    let subredditNamePrefixed, name: String?
    let linkFlairText: String?
    let score, created: Int?
    let urlOverriddenByDest: String?
    let viewCount: String?
    let numComments: Int?

    enum CodingKeys: String, CodingKey {
        case approvedAtUTC
        case subreddit, selftext
        case authorFullname
        case title
        case subredditNamePrefixed
        case name
        case linkFlairText
        case score, created
        case urlOverriddenByDest
        case viewCount
        case numComments
    }
}
