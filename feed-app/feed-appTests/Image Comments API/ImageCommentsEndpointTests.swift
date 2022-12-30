//
//  ImageCommentsEndpointTests.swift
//  feed-appTests
//
//  Created by Rostislav Zapolsky on 22.12.22.
//

import XCTest
import feed_app

class ImageCommentsEndpointTests: XCTestCase {
    
    func test_imageComments_endpointURL() {
        let uuidString = "2239CBA2-CB35-4392-ADC0-24A37D38E010"
        let imageID = UUID(uuidString: uuidString)!
        let baseURL = URL(string: "http://base-url.com")!
        
        let received = ImageCommentsEndpoint.get(imageID).url(baseURL: baseURL)
        let expected = URL(string: "http://base-url.com/v1/image/\(uuidString)/comments")!
        
        XCTAssertEqual(received, expected)
    }
    
}
