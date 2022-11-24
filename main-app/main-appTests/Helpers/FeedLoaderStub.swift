//
//  FeedLoaderStub.swift
//  main-appTests
//
//  Created by Rostislav Zapolsky on 24.11.22.
//

import feed_app

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result

    init(result: FeedLoader.Result) {
        self.result = result
    }

    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
