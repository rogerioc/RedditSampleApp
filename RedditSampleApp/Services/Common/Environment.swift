//
//  Environment.swift
//  HotMartTest
//
//  Created by rogerio on 09/07/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation

public protocol EnvironmentType {
    func getBaseUrl() -> URL
}

public class EnvironmentString: EnvironmentType {
    
    public func getBaseUrl() -> URL {
        URL(string: "https://www.reddit.com/r/")!
    }
}
