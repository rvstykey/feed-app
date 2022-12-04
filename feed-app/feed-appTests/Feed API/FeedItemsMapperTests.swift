//
//  FeedItemsMapperTests.swift
//  feed-appTests
//
//  Created by Rostislav Zapolsky on 30.07.22.
//

import XCTest
import feed_app

class FeedItemsMapperTests: XCTestCase {
    
    func test_map_throwsErrorOnNon200HttpResponse() throws {
        let json = makeItemsJSON([])
        let samples = [199, 201, 300, 400, 500]
        
        try samples.forEach { code in
            XCTAssertThrowsError(try FeedItemsMapper.map(json, response: HTTPURLResponse(statusCode: code)))
        }
    }
    
    func test_map_throwsErrorOn200HttpResponseWithInvalidJSON() {
        let invalidJSON = Data("invalid json".utf8)
        
        XCTAssertThrowsError(try FeedItemsMapper.map(invalidJSON, response: HTTPURLResponse(statusCode: 200)))
    }
    
    func test_map_deliversNoItemsOn200HttpResponseWithEmptyJSONList() throws {
        let emptyListJSON = makeItemsJSON([])

        let result = try FeedItemsMapper.map(emptyListJSON, response: HTTPURLResponse(statusCode: 200))
        
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_map_deliversItemsOn200HttpResponseWithJSONItems() throws {
        let item1 = makeItem(
            id: UUID(),
            imageURL: URL(string: "http://a-url.com")!)
        
        let item2 = makeItem(
            id: UUID(),
            description: "a description",
            location: "a location",
            imageURL: URL(string: "http://another-url.com")!)
        
        let jsonData = makeItemsJSON([item1.json, item2.json ])
        
        let result = try FeedItemsMapper.map(jsonData, response: HTTPURLResponse(statusCode: 200))
        
        XCTAssertEqual(result, [item1.model, item2.model])
    }
    
    // MARK: - Helpers
    
    private func makeItem(id: UUID = UUID(), description: String? = nil, location: String? = nil, imageURL: URL) -> (model: FeedImage, json: [String: Any]) {
        let item = FeedImage(id: id, description: description, location: location, url: imageURL)
        let json = [
            "id": id.uuidString,
            "description": description,
            "location": location,
            "image": imageURL.absoluteString
        ].compactMapValues { $0 }
        
        return (item, json)
    }
}
