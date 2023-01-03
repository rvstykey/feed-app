//
//  FeedCache.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 24.11.22.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
