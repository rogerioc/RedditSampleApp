//
//  PostListUIView.swift
//  RedditSampleApp
//
//  Created by rogerio on 14/08/20.
//  Copyright © 2020 Rogeriocs www.rogerioc.com.br. All rights reserved.
//

import UIKit

final class PostListUIView: UITableView, PostListType {
    
    var viewModel: PostListViewModelType?
    
    func setViewModel(with postListViewModelType: PostListViewModelType) {
        self.viewModel = postListViewModelType
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    func viewDidLoad() {
        
        register(PostCell.self, forCellReuseIdentifier: PostCell.defaultReuseIdentifier)
        dataSource = self
        delegate = self
        viewModel?.updateList = { [weak self] in
            self?.reloadData()
        }
        
        viewModel?.viewDidLoad()

        
    }
}

extension PostListUIView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.quantity ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:  PostCell.defaultReuseIdentifier, for: indexPath) as! PostCell
        guard let entity = viewModel?[indexPath.row] else { return cell }
        let cellViewModel = PostCellViewModel(postViewEntity: entity)
        cell.setPostCellViewModelType(with: cellViewModel)
        cell.setContentViewCell(contentViewCell: PostView())
        cell.setup()
        return cell
    }
    
}

extension PostListUIView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.select(index: indexPath.row)
    }
}
