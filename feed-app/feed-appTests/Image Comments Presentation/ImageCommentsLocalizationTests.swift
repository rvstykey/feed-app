//
//  ImageCommentsLocalizationTests.swift
//  feed-appTests
//
//  Created by Rostislav Zapolsky on 14.12.22.
//

import XCTest
import feed_app

final class ImageCommentsLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
    
}
