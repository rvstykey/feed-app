//
//  ImageCommentCellController.swift
//  feed-app-iOS
//
//  Created by Rostislav Zapolsky on 16.12.22.
//

import UIKit
import feed_app

public final class ImageCommentCellController: CellController {
    public let model: ImageCommentViewModel
    
    public init(model: ImageCommentViewModel) {
        self.model = model
    }
    
    public func view(in tableView: UITableView) -> UITableViewCell {
        let cell: ImageCommentCell = tableView.dequeueReusableCell()
        cell.messageLabel.text = model.message
        cell.usernameLabel.text = model.username
        cell.dateLabel.text = model.date
        return cell
    }
    
    public func preload() {
        
    }
    
    public func cancelLoad() {
        
    }
    
}
