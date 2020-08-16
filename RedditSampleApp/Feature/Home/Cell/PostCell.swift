//
//  PostCell.swift
//  RedditSampleApp
//
//  Created by rogerio on 14/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import UIKit

final class PostCell: UITableViewCell {
    
    var contentViewCell: PostViewType?
    var viewModel: PostCellViewModelType?
    
    func setContentViewCell(contentViewCell: PostViewType) {
        self.contentViewCell = contentViewCell
        bind()
    }
    
    func setPostCellViewModelType(with viewModel: PostCellViewModelType) {
        self.viewModel = viewModel
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        bind()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        bind()
    }
    
    private func bind(){
        guard let contentViewCell = contentViewCell else { return }
        addSubview(contentViewCell.content)
        contentViewCell.content.bindFrameToSuperviewBounds()
    }
    
    func setup() {
        viewModel?.updateView = { [weak self] postViewEntity in
            self?.contentViewCell?.updateData(with: postViewEntity)
        }
        viewModel?.viewDidLoad()
    }
    
    
}
