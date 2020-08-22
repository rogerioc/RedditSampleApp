//
//  TypeTopic.swift
//  RedditSampleApp
//
//  Created by rogerio on 22/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

enum TypeTopic: String, Equatable {
    case programming
}

extension TypeTopic {
    var jsonName: String  {
        switch self {
        case .programming:
            return "programming.json"
        }
    }
}
