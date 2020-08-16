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
    let score, created: Int?
    let urlOverriddenByDest: String?
    let viewCount: String?
    let numComments: Int?

    enum CodingKeys: String, CodingKey {
        case approvedAtUTC = "approved_at_utc"
        case subreddit, selftext
        case authorFullname = "author_fullname"
        case title
        case subredditNamePrefixed = "subreddit_name_prefixed"
        case name
        case score, created
        case urlOverriddenByDest = "url_overridden_by_dest"
        case viewCount = "view_count"
        case numComments = "num_comments"
    }
}
