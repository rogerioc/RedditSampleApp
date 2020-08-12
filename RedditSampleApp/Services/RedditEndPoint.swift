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
    
    var method: HTTPMethod {
        
        switch self {
        case .list:
            return .get
        
        }
    }
    
    var path: String {
        switch self {
            case .list(let posts):
                return "/\(posts)"
        }
    }
    
    
    
}
