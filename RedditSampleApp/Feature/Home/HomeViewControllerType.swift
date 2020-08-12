//
//  HomeViewControllerType.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewControllerType where Self: UIViewController {
    var contentView: HomeViewType { get }
}

