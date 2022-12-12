//
//  FeedUIIntegrationTests+Localization.swift
//  feed-app-iOSTests
//
//  Created by Rostislav Zapolsky on 17.11.22.
//

import Foundation
import XCTest
import feed_app

extension FeedUIIntegrationTests {
    var loadError: String {
        localized("GENERIC_CONNECTION_ERROR", table: "Shared")
    }
    
    func localized(_ key: String, table: String = "Feed", file: StaticString = #file, line: UInt = #line) -> String {
        let bundle = Bundle(for: FeedPresenter.self)
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: \(key) in table: \(table)", file: file, line: line)
        }
        return value
    }
}
