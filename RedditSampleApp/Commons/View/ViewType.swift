//
//  ViewType.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import UIKit

protocol ViewType where Self: UIView {
    var content: UIView { get }
}

extension ViewType {
    var content: UIView {
        return self
    }
}
