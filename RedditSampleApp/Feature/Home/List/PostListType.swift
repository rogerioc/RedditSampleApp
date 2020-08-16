//
//  PostListType.swift
//  RedditSampleApp
//
//  Created by rogerio on 14/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
import UIKit

protocol PostListType where Self: UITableView {
    func setViewModel(with postListViewModelType: PostListViewModelType)
    func viewDidLoad()
}
