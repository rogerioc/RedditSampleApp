//
//  Endpoint.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
import Alamofire

struct Endpoint {
    var enviroment: Environment
    var endpointTypeProtocol: EndpointTypeProtocol
}

extension Endpoint: URLRequestConvertible {
        
    func asURLRequest() throws -> URLRequest {
        let url = enviroment.getBaseUrl()
        var urlRequest = URLRequest(url: url.appendingPathComponent(endpointTypeProtocol.path))
        urlRequest.httpMethod = endpointTypeProtocol.method.rawValue    
        return urlRequest
    }
    
}

