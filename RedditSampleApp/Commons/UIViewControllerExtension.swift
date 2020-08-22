//
//  UIViewControllerExtension.swift
//  HotMartTest
//
//  Created by rogerio on 18/07/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    public func alertOK(title: String, message: String, okSellected: ( () -> Void)?) {
        CustomAlerts.alertOk(uiView: self, title: title, message: message, okSellected: okSellected)
    }
}
