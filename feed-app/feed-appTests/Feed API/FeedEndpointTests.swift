//
//  FeedEndpointTests.swift
//  feed-appTests
//
//  Created by Rostislav Zapolsky on 22.12.22.
//

import XCTest
import feed_app

class FeedEndpointTests: XCTestCase {
    
    func test_feed_endpointURL() {
        let baseURL = URL(string: "http://base-url.com")!
        
        let received = FeedEndpoint.get.url(baseURL: baseURL)
        let expected = URL(string: "http://base-url.com/v1/feed")!
        
        XCTAssertEqual(received, expected)
    }
    
}