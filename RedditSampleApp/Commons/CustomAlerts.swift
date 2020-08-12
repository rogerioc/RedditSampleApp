//
//  CustomAlerts.swift
//  HotMartTest
//
//  Created by rogerio on 18/07/20.
//  Copyright © 2020 rogerio. All rights reserved.
//

import Foundation
import UIKit

final public class CustomAlerts {
    
    static func alertOk(uiView: UIViewController,title: String, message: String, okSellected: @escaping () ->Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK".localizable, style: .default, handler: { _ in
            okSellected()
        }))
        uiView.present(alert, animated: true, completion: nil)
    }

}
