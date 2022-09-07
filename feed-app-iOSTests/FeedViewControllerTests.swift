//
//  FeedViewControllerTests.swift
//  feed-app-iOSTests
//
//  Created by Rostislav Zapolsky on 07.09.22.
//

import Foundation
import XCTest

final class FeedViewController {
     init(loader: FeedViewControllerTests.LoaderSpy) {

     }
 }

class FeedViewControllerTests: XCTestCase {
    
    func test_init_doesNotLoadFeed() {
         let loader = LoaderSpy()
         _ = FeedViewController(loader: loader)

         XCTAssertEqual(loader.loadCallCount, 0)
     }
    
    // MARK: - Helpers
     
     class LoaderSpy {
         private(set) var loadCallCount: Int = 0
     }
    
}
