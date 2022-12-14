//
//  FeedLocalizationTests.swift
//  feed-app-iOSTests
//
//  Created by Rostislav Zapolsky on 17.11.22.
//

import XCTest
import feed_app

final class FeedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
