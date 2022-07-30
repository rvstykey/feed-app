//
//  FeedLoader.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 30.07.22.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completions: @escaping (LoadFeedResult) -> Void)
}
