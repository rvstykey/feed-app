//
//  FeedCache.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 24.11.22.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
