//
//  DetailView.swift
//  RedditSampleApp
//
//  Created by rogerio on 21/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//
import UIKit

final class DetailView: DefaultUIView, DetailViewType {
    
    
    private lazy var loadingIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        return indicator
    }()
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func buildHierarch() {
        addSubview(loadingIndicator)
    }
    
    override func setupConstraints() {
        loadingIndicator.centered()
    }
    
    private func setLoading(with loading: Bool) {
        loadingIndicator.isHidden = !loading
    }
}

extension DetailView {
    func loading(is loading: Bool) {
        setLoading(with: loading)
    }
}
