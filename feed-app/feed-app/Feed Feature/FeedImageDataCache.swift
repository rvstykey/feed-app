//
//  FeedImageDataCache.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 24.11.22.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
