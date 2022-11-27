//
//  UIButton+TestHelpers.swift
//  feed-app-iOSTests
//
//  Created by Rostislav Zapolsky on 16.11.22.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
