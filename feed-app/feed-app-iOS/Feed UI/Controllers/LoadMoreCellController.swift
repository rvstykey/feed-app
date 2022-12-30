//
//  LoadMoreCellController.swift
//  feed-app-iOS
//
//  Created by Rostislav Zapolsky on 30.12.22.
//

import UIKit
import feed_app

public final class LoadMoreCellController: NSObject {
    private let cell = LoadMoreCell()
}

extension LoadMoreCellController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        cell
    }
}

extension LoadMoreCellController: ResourceLoadingView, ResourceErrorView {
    public func display(_ viewModel: feed_app.ResourceErrorViewModel) {
        cell.message = viewModel.message
    }
    
    public func display(_ viewModel: ResourceLoadingViewModel) {
        cell.isLoading = viewModel.isLoading
    }
}
