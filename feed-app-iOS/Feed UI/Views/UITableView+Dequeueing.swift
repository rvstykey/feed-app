//
//  UITableView+Dequeueing.swift
//  feed-app-iOS
//
//  Created by Rostislav Zapolsky on 16.11.22.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
