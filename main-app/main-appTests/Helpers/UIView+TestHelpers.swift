//
//  UIView+TestHelpers.swift
//  main-appTests
//
//  Created by Rostislav Zapolsky on 02.12.22.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
