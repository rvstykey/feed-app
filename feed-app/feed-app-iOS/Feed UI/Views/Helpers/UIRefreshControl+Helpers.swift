//
//  UIRefreshControl+Helpers.swift
//  feed-app-iOS
//
//  Created by Rostislav Zapolsky on 18.11.22.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
