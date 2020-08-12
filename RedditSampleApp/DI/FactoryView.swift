//
//  FactoryView.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import Foundation

final class FactoryView: FactoryViewType {
    func makeHomeView() -> HomeViewType {
        return HomeView()
    }    
    
}
