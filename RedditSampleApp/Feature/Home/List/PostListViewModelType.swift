//
//  PostListViewModelType.swift
//  RedditSampleApp
//
//  Created by rogerio on 14/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol PostListViewModelType: AnyObject {
    var updateList: (() -> Void)? { get set }
    var quantity: Int { get }
    subscript(index: Int) -> PostViewEntity? { get }
    func setList(with posts: [PostViewEntity])
    func viewDidLoad()
    
}

final class PostListViewModel: PostListViewModelType {
    var updateList: (() -> Void)?
        
    var postList: [PostViewEntity]? {
        didSet{
            DispatchQueue.main.async { [weak self] in
                guard let _self = self else { return }
                _self.updateList?()
            }
        }
    }
    
    func setList(with posts: [PostViewEntity]) {
        postList = posts
    }
    
    var quantity: Int {
        get {
            postList?.count ?? 0
        }
    }
    
    func viewDidLoad() {
        
    }
    
    public subscript(index: Int) -> PostViewEntity? {
        return postList?[index] ?? nil
    }
}
