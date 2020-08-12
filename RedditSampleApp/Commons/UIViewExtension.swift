//
//  UIViewExtension.swift
//  RedditSampleApp
//
//  Created by rogerio on 11/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import UIKit

extension UIView {
    func bindFrameToSuperviewBounds(constant: CGFloat = 0) {
        guard let superview = self.superview else {
            return
        }
        self.translatesAutoresizingMaskIntoConstraints = false

        self.topAnchor.constraint(equalTo: superview.compatibleSafeAreaLayoutGuide.topAnchor,
                                  constant: constant).isActive = true

        self.bottomAnchor.constraint(equalTo: superview.compatibleSafeAreaLayoutGuide.bottomAnchor,
                                     constant: -constant).isActive = true

        self.leadingAnchor.constraint(equalTo: superview.compatibleSafeAreaLayoutGuide.leadingAnchor,
                                      constant: constant).isActive = true

        self.trailingAnchor.constraint(equalTo: superview.compatibleSafeAreaLayoutGuide.trailingAnchor,
                                       constant: -constant).isActive = true

    }

    public func constraintToSuperview(top: CGFloat = 0,
                                      leading: CGFloat = 0,
                                      trailing: CGFloat = 0,
                                      bottom: CGFloat = 0) {

        guard let superview = self.superview else {
            return
        }

        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: top),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: trailing),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: leading),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: bottom)
            ])
    }

    static func withHeight(_ height: CGFloat) -> UIView {
        let view = UIView()
        NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant: height)
        ])
        return view
    }

    static func withWidth(_ width: CGFloat) -> UIView {
        let view = UIView()
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: width)
        ])
        return view
    }

    var compatibleSafeAreaLayoutGuide: LayoutGuideProvider {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide
        } else {
            return self
        }
    }
}

protocol LayoutGuideProvider {
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    var trailingAnchor: NSLayoutXAxisAnchor { get }
    var leftAnchor: NSLayoutXAxisAnchor { get }
    var rightAnchor: NSLayoutXAxisAnchor { get }
    var topAnchor: NSLayoutYAxisAnchor { get }
    var bottomAnchor: NSLayoutYAxisAnchor { get }
    var widthAnchor: NSLayoutDimension { get }
    var heightAnchor: NSLayoutDimension { get }
    var centerXAnchor: NSLayoutXAxisAnchor { get }
    var centerYAnchor: NSLayoutYAxisAnchor { get }
}

extension UIView: LayoutGuideProvider { }
extension UILayoutGuide: LayoutGuideProvider { }
