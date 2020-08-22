//
//  FactoryData.swift
//  RedditSampleAppTests
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
@testable import RedditSampleApp

final class FactoryData {
    static func posts() -> Posts {
        return Posts(kind: "kind", data: FactoryData.postsData())
    }
    
    static func postsNil() -> Posts {
        return Posts(kind: "kind", data: nil)
    }
    
    static func postsData() -> PostsData {
        return PostsData(dist: 0, children: FactoryData.childs(), after: "afrer", before: "before")
    }
    static func childs() -> [Child] {
        [FactoryData.child()]
    }
    
    static func child() -> Child {
        Child(data: FactoryData.childData())
    }
    static func childData() -> ChildData {
        ChildData(approvedAtUTC: "", subreddit: "", selftext: "", authorFullname: "", title:"", subredditNamePrefixed: "", name: "", score: 0, created: 0, urlOverriddenByDest: "", viewCount: "", numComments: 0, permalink: "")
    }
}
