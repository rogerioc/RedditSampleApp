//
//  RedditEndPoint.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
import Alamofire

enum RedditEndPoint: EndpointTypeProtocol {
    case list(posts: String)
    case detail(detailPath: String)
    
    var method: HTTPMethod {
        
        switch self {
        case .list, .detail:
            return .get
        
        }
    }
    
    var path: String {
        switch self {
            case .list(let posts):
                return "\(posts)"
            case .detail(let detailPath):
                return "\(detailPath)"
        }
    }
    
}
