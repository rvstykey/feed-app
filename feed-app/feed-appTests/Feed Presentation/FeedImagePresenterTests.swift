//
//  FeedImagePresenterTests.swift
//  feed-appTests
//
//  Created by Rostislav Zapolsky on 18.11.22.
//

import XCTest
import feed_app

class FeedImagePresenterTests: XCTestCase {
    
    func test_map_createsViewModel() {
        let image = uniqueImage()
        
        let viewModel = FeedImagePresenter.map(image)
        
        XCTAssertEqual(viewModel.description, image.description)
        XCTAssertEqual(viewModel.location, image.location)
    }
    
}
