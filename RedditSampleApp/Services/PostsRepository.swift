//
//  PostsRepository.swift
//  RedditSampleApp
//
//  Created by rogerio on 12/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
import Alamofire

protocol PostsRepositoryType: AnyObject {
    func fetchPosts(type: String, success: @escaping (Posts)-> (), failure: @escaping (CustomError)->())
}

final class PostsRepository: PostsRepositoryType {
    
    let environment: EnvironmentType
    
    init(environment: EnvironmentType) {
        self.environment = environment
    }
    
    func fetchPosts(type: String, success: @escaping (Posts) -> (), failure: @escaping (CustomError) -> ()) {
        let endPoint = Endpoint(enviroment: environment, endpointTypeProtocol: RedditEndPoint.list(posts: type))
        get(endPoint: endPoint, success: success, failure: failure)

    }
    
    func get<T: Codable>(endPoint: Endpoint, success: @escaping (T) -> (),failure: @escaping (CustomError) -> ()) {
        AF.request(endPoint).responseJSON { response in
            switch response.result {
            case .success(_):
                guard let data = response.data else {
                    let error = CustomError.network
                    failure(error)
                    return
                }
                let decoder = JSONDecoder()
                do {
                    let response = try decoder.decode(T.self, from: data)
                    success(response)
                } catch  {
                    print(error)
                    let errorApi = CustomError.json
                    failure(errorApi)
                }
                
            case let .failure(error):
                print(error)
                let error = CustomError.network
                failure(error)
            }
            
        }
    }
}
