//
//  FeedLoader.swift
//  feed-app
//
//  Created by Rostislav Zapolsky on 30.07.22.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

extension LoadFeedResult: Equatable where Error: Equatable {}

public protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completions: @escaping (LoadFeedResult<Error>) -> Void)
}
