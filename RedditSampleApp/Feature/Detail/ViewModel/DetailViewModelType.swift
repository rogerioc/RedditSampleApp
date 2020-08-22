//
//  DetailViewModelType.swift
//  RedditSampleApp
//
//  Created by rogerio on 22/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

protocol DetailViewModelType: AnyObject {
    var title: ((String) -> Void)? { get set }
    func viewDidLoad()
}
