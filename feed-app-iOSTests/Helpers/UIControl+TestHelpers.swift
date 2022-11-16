//
//  UIControl+TestHelpers.swift
//  feed-app-iOSTests
//
//  Created by Rostislav Zapolsky on 16.11.22.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
