//
//  Codable.swift
//  feed-appTests
//
//  Created by Rostislav Zapolsky on 31.08.22.
//

import XCTest
import feed_app

class CodableFeedStore {
    typealias RetrievalCompletion = (RetrieveCachedFeedResult) -> Void
    
    func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }
}

class CodableFeedStoreTests: XCTestCase {
    
    func test_retrieve_deliversEmptyOnEmptyCache() {
        let sut = CodableFeedStore()
        let exp = expectation(description: "Wait for cache retrieve")
        
        sut.retrieve { result in
            switch result {
            case .empty:
                break
            default:
                XCTFail("Expected empty result, got \(result) instead")
            }
            
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 1.0)
    }
}
